<?php
// check online for result (cocokan dengan data online)
// https://www.devglan.com/online-tools/triple-des-encrypt-decrypt


// define method for cipher Trpile DES (metode yg digunakan)
define('METHOD', 'DES-EDE3');

// define key passpharse. The passphrase. (key untuk passphrase)
// If the passphrase is shorter than expected, it is silently padded with NUL characters; if the passphrase is longer than expected, it is silently truncated. 
define('KEY', '6236114623611462361146236114623611462361146236114');

// options is a bitwise disjunction of the flags OPENSSL_RAW_DATA and OPENSSL_ZERO_PADDING. (opsi nya)
define('OPTIONS', 0);

/**
 * simple method to encrypt a plain text string. (cara sederhana untuk enkripsi)
 * @param string $text - The plaintext message data to be encrypted. (text yang akan di enkripsi)
 * @return string
 */
function encrypt_text($text) {
    return openssl_encrypt($text, METHOD, KEY, OPTIONS);
}

/**
 * simple method to decrypt a plain text string.
 * @param string $encypt_text - The encrypted message to be decrypted. (text enksripsi yang akan di dekripsi)
 * @return string
 */
function decrypt_text($encypt_text) {
    return openssl_decrypt($encypt_text, METHOD, KEY, OPTIONS);
}
