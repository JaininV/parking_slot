import qrcode
from PIL import Image

# Define the parking location data
parking_location = "Parking slot 4 ground floor"

# Create a QR code instance
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)

# Add the parking location data to the QR code
qr.add_data(parking_location)
qr.make(fit=True)

# Create a QR code image
qr_code_img = qr.make_image(fill_color="red", back_color="black")

# Save the QR code image to a file
qr_code_img.save("parking_location_qr.png")

# Display the QR code image
qr_code_img.show()
