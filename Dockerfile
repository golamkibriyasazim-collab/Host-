FROM python:3.11-slim

WORKDIR /app

# Python ডিপেন্ডেন্সি ইনস্টল
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# বাকি সব ফাইল কপি
COPY . .

# বট চালানোর জন্য CMD (এটি Procfile-কে ওভাররাইড করবে)
CMD ["python", "xhost.py"]
