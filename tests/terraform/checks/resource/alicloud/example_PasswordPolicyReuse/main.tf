resource "alicloud_ram_account_password_policy" "pass" {
  minimum_password_length      = 14
  require_lowercase_characters = false
  require_uppercase_characters = false
  require_numbers              = false
  require_symbols              = true
  hard_expiry                  = true
  max_password_age             = 14
  password_reuse_prevention    = 24
  max_login_attempts           = 3
}

resource "alicloud_ram_account_password_policy" "fail" {
  minimum_password_length      = 9
  require_lowercase_characters = false
  require_uppercase_characters = false
  require_numbers              = false
  require_symbols              = false
  hard_expiry                  = true
  max_password_age             = 120
  password_reuse_prevention    = 5
  max_login_attempts           = 3
}

resource "alicloud_ram_account_password_policy" "fail2" {
  require_lowercase_characters = false
  require_uppercase_characters = false
  require_numbers              = false
  hard_expiry                  = true
  max_login_attempts           = 3
}
