alter table ChiTieu_1412502_1412542_1412543 add Sign raw(500);

CREATE OR REPLACE FUNCTION add_signature( Message IN NUMBER, PrivateKey in clob )
RETURN RAW
AS
  signature RAW(500);
BEGIN
    signature := ORA_RSA.SIGN(message => UTL_I18N.STRING_TO_RAW(Message, 'AL32UTF8'),
    private_key => UTL_RAW.cast_to_raw(PrivateKey),
	private_key_password => '',
    hash => ORA_RSA.HASH_SHA256);
  RETURN signature;
END;

create or replace function verify_signature(Message in number, Signature in raw, PublicKey in clob)
RETURN RAW
AS
  signature_check_result PLS_INTEGER;
BEGIN	
   
    signature_check_result := ORA_RSA.VERIFY(message => UTL_I18N.STRING_TO_RAW(Message, 'AL32UTF8'), 
        signature => Signature, 
        public_key => UTL_RAW.cast_to_raw(PublicKey),
        HASH => ORA_RSA.HASH_SHA256);
 
    IF signature_check_result = 1 THEN
       RETURN 'Signature verification passed.'; 
    ELSE
       RETURN 'Signature cannot be verified.'; 
    END IF; 
END;

