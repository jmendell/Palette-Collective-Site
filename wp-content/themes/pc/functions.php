<?php
/**
 * Sage includes
 *
 * The $sage_includes array determines the code library included in your theme.
 * Add or remove files to the array as needed. Supports child theme overrides.
 *
 * Please note that missing files will produce a fatal error.
 *
 * @link https://github.com/roots/sage/pull/1042
 */
$sage_includes = [
  'lib/utils.php',                 // Utility functions
  'lib/init.php',                  // Initial theme setup and constants
  'lib/wrapper.php',               // Theme wrapper class
  'lib/conditional-tag-check.php', // ConditionalTagCheck class
  'lib/config.php',                // Configuration
  'lib/assets.php',                // Scripts and stylesheets
  'lib/titles.php',                // Page titles
  'lib/extras.php',                // Custom functions
  'lib/options.php',                // Options Pages
];

foreach ($sage_includes as $file) {
  if (!$filepath = locate_template($file)) {
    trigger_error(sprintf(__('Error locating %s for inclusion', 'sage'), $file), E_USER_ERROR);
  }

  require_once $filepath;
}
unset($file, $filepath);

//Dynamically populate Gravity Forms select field
add_filter( 'gform_pre_render_4', 'populate_posts' );
add_filter( 'gform_pre_validation_4', 'populate_posts' );
add_filter( 'gform_pre_submission_filter_4', 'populate_posts' );
add_filter( 'gform_admin_pre_render_4', 'populate_posts' );
function populate_posts( $form ) {

    foreach ( $form['fields'] as &$field ) {

        if ( $field->type != 'select' || strpos( $field->cssClass, 'populate-posts' ) === false ) {
            continue;
        }

        // you can add additional parameters here to alter the posts that are retrieved
        // more info: [http://codex.wordpress.org/Template_Tags/get_posts](http://codex.wordpress.org/Template_Tags/get_posts)
        $posts = get_posts( 'post_type=location&numberposts=-1' );

        $choices = array();

        foreach ( $posts as $post ) {
            $choices[] = array( 'text' => $post->post_title, 'value' => $post->post_title );
        }

        // update 'Select a Post' to whatever you'd like the instructive option to be
        $field->placeholder = 'Location of Interest';
        $field->choices = $choices;

    }

    return $form;
}

//Walker Menu Function
// extends the walker class
// using this to add the active class to the active page menu item
// adding custom classes to the 'li' and 'a' elements
class Microdot_Walker_Nav_Menu extends Walker_Nav_Menu {
    public function start_lvl( &$output, $depth = 0, $args = array() ) {
        $output .= '<ul>';
    }

    public function end_lvl( &$output, $depth = 0, $args = array() ) {
        $output .= '</ul>';
    }

    public function start_el( &$output, $item, $depth = 0, $args = array(), $id = 0 ) {
        $classes = array();
        if( !empty( $item->classes ) ) {
            $classes = (array) $item->classes;
        }
        
        // add active classes
        $active_class = '';
        if( in_array('current-menu-item', $classes) ) {
            $active_class = ' active';
        } else if( in_array('current-menu-parent', $classes) ) {
            $active_class = ' active-parent';
        } else if( in_array('current-menu-ancestor', $classes) ) {
            $active_class = ' active-ancestor';
        }
        
        // permalink
        $url = '';
        if( !empty( $item->url ) ) {
            $url = $item->url;
        }
        
        // gets title on the page and turns it into slug to use as a class ( ex: about-us )
        $item_name = strtolower($item->title);
        $item_name = preg_replace("/[^a-z0-9_\s-]/", "", $item_name);
        $item_name = preg_replace("/[\s-]+/", " ", $item_name);
        $item_name = preg_replace("/[\s_]/", "-", $item_name);

        // build out custom link
        // add any classes that you want
        $output .= '<li><a class="nav-link link" href="' . $url . '">' . $item->title . '<br><span class="description">'. $item->description .'</span></a></li>';

    }

    public function end_el( &$output, $item, $depth = 0, $args = array() ) {
        $output .= '</li>';
    }
}

function palettePrimary_nav() {

    $menu = wp_nav_menu(
        array(
            'theme_location'  => 'primary_navigation',
            'menu'            => '',
            'container'       => false,
            'container_class' => '',
            'container_id'    => '',
            'menu_class'      => '',
            'menu_id'         => '',
            'echo'            => false,
            'fallback_cb'     => 'wp_page_menu',
            'before'          => '',
            'after'           => '',
            'link_before'     => '',
            'link_after'      => '',
            'items_wrap'      => '<ul>%3$s</ul>',
            'depth'           => 0,
            'walker'          => new Microdot_Walker_Nav_Menu()
        )
    );

    if ( $menu ) {
        echo $menu;
    }
}

// REGISTER MENU
function register_html5_menu()
{
    register_nav_menus(array( 
        'primary' => __( 'Primary Navigation', 'dnnsldrText' )
    ));
}

// use menu this way in your theme file
// dnnsldrPrimaryNav();
