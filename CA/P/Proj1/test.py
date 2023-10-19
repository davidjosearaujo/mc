import hashlib

# Your 256-bit key (you can replace this with your actual key)
key_256_bits = hashlib.sha256(b'SecretKey').digest()

# Create an empty set to store the selected values
selected_values = set()

# Maximum value (2048) to select
max_value = 2048

# Use the key to determine the unique values to select within the range [0, max_value)
i = 0
while len(selected_values) < 256:
    # Generate a 32-bit (4-byte) hash for the current index and key
    index_key = key_256_bits + bytes(i)
    index_hash = hashlib.sha256(index_key).digest()

    # Use the first two bytes of the hash to determine the selected value within [0, 65535)
    selected_value = int.from_bytes(index_hash[:2], 'big') % max_value

    # Add the selected value to the set to ensure uniqueness
    selected_values.add(selected_value)

    i += 1

# Now, selected_values contains 256 unique values within the range [0, 2047] based on the key
print("256-bit Key:", key_256_bits.hex())
print("Selected Values:", selected_values)
