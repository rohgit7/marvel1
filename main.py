from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes

message = input("Enter the message to be encrypted and decrypted: ")
data = message.encode()

key = get_random_bytes(16)

cipher = AES.new(key, AES.MODE_GCM)
nonce = cipher.nonce
ciphertext, tag = cipher.encrypt_and_digest(data)

print("\n--- Encryption ---")
print("Ciphertext (hex):", ciphertext.hex())
print("Tag (hex):", tag.hex())
print("Nonce (hex):", nonce.hex())
print("Key (hex):", key.hex())

cipher_decrypt = AES.new(key, AES.MODE_GCM, nonce=nonce)
decrypted_data = cipher_decrypt.decrypt_and_verify(ciphertext, tag)

print("\n--- Decryption ---")
print("Decrypted message:", decrypted_data.decode())
