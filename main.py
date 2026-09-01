try:
	from fastapi import FastAPI
except ImportError as e:
	raise RuntimeError(
		"Missing dependency 'fastapi'. Install it with: pip install fastapi[all]"
	) from e

# create FastAPI app
app = FastAPI()
