<?php
/**
 * Default config settings
 *
 * Enter any WordPress config settings that are default to all environments
 * in this file. These can then be overridden in the environment config files.
 * 
 * Please note if you add constants in this file (i.e. define statements) 
 * these cannot be overridden in environment config files.
 * 
 * @package    Studio 24 WordPress Multi-Environment Config
 * @version    1.0
 * @author     Studio 24 Ltd  <info@studio24.net>
 */
  

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'XqA`/Lk>*mRe_[,F@P3^{}n[FOwK`Wqr1]=U,T&|0g+3S$B/b1r+8p+|[Cq&wCL(');
define('SECURE_AUTH_KEY',  'q <ie@qR4t%5y^MLMr9oY-<rbV8>v5?p@iCiFrK2|e0f~(q>krX29(R})v1Uz!^(');
define('LOGGED_IN_KEY',    ' l_&g_#4| ybl!L;33>A@hlo-{|~8P?o+ad.Uj):Y4CSF?hRi+-kSQF44Ey-S4`[');
define('NONCE_KEY',        'nsbR}z*2d<+QIm_sYh-H;O=p-}4zg1+:xY4+>L}F`9iHl9tJ?3GV`r1uDHGuuxVW');
define('AUTH_SALT',        ',+#?`WDHd4$ck}eYow!7q7]9pVjLX^.H-J!*sYla8^%X:z82hJ<+U Q%p?Wec?Yu');
define('SECURE_AUTH_SALT', 't{seyT{JSjOGQnm6Me  =}*){LaLiSe}LZL[ePI,x54N8j-%]a JngpWzJ3iaMvZ');
define('LOGGED_IN_SALT',   '(L%<ofs>1|X%TJe5(GaNINI!o.yxtUfuM(@/M|tqvZ@c R6NS:X;]w`1c`GBCJdj');
define('NONCE_SALT',       '&EbncW%S2FQn;~)/_}hg2t2;jky~ZyDZ-Dop=+;^!zJ]EG/g+9pY+d|e>Rg~!Zle');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * Increase memory limit. 
 */
define('WP_MEMORY_LIMIT', '64M');