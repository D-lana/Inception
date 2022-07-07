<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */
 
// ** MySQL settings - You can get this info from your web host ** //
define('WP_CACHE', true);
/** The name of the database for WordPress */
define('DB_NAME', getenv('DB_NAME'));
 
/** MySQL database username */
define('DB_USER', getenv('DB_USER'));

/** MySQL database password */
define('DB_PASSWORD', getenv('DB_PASSWORD'));
 
/** MySQL hostname */
define('DB_HOST', getenv('DB_HOST'));
 
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

define('WP_CACHE_KEY_SALT', 'dlana.42.fr');

define('AUTH_KEY',         'kmFQR1[w&K]$zp*d.sx; @y_;Ivl[.Vi]?f^HQWe3d87xgPa1{nwc+O2P-YuVD7a');
define('SECURE_AUTH_KEY',  '$?IdrO) yN1:@8x_s(Pa_|eBXkpsXJH&_;lzDf,mimuItqT#7^85X7b,S-)f,pD+');
define('LOGGED_IN_KEY',    'ib^a7$`S~n~{m!d7+Ps;!+9RZ|OUI%MX+1e>$Li6#Vh>q9)+|HsR;iaWN825Aywq');
define('NONCE_KEY',        'Ag:7%Xp!i._(`c~JgfRNDslu|@=vs|2#x5dX,*o?^v.z6d3+NPZ:R9ZltxF#v]WW');
define('AUTH_SALT',        'Uw=]^U2uD?gBKdKqfOg|yC5$T9eZKd[|,e>ai; gy+m5Se_?~]w_)7]4-88XYbf}');
define('SECURE_AUTH_SALT', ';9g3d.@OMM?uG<wxxht}g-[c-i+:Vtrs{a+JyHbq^.$|R7-m.6xWa9[vp+qItmL/');
define('LOGGED_IN_SALT',   'WjEq;mgzu`M?/E-Q0+[3,I&.VJuYAm@,~:)NS7xOfz2eRa:.~dKEGyb.NEvh#z/d');
define('NONCE_SALT',       'L|Ar/F*stR6Tm>}jn5](L^Eze2!Lx5Dw]}ryR^P@w|04Hy8-!fi=AfwB&~_+?A@b');

/**#@-*/
 
/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';
 
/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
 
/* That's all, stop editing! Happy blogging. */
 
/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');
 
/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');