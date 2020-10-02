EXEPATH="../bin"
CERT_PATH="/home/pi/Desktop/WIP1/TrustM/cli-optiga-trust-m/trustm_lib/certificates"

echo "-----> Running the test client "
#~ openssl s_client -connect 127.0.0.1:5000 -client_sigalgs ECDSA+SHA256 -keyform engine -engine trustm_engine -cert client1_e0f1.crt -key 0xe0f1:^ -tls1_2 -CAfile $CERT_PATH/OPTIGA_Trust_M_Infineon_Test_CA.pem -verify 1

openssl s_client -connect localhost:5002 -client_sigalgs ECDSA+SHA256 -keyform engine -engine trustm_engine -cert client1_e0f3.crt -key 0xe0f3:^ -tls1_2 -CAfile $CERT_PATH/OPTIGA_Trust_M_Infineon_Test_CA.pem 
