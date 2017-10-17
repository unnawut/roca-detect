# Docker Container for ROCA detection

A small docker container that set-ups and runs [roca-detect](https://github.com/crocs-muni/roca) to check if your keys are affected by [ROCA vulnerability](https://crocs.fi.muni.cz/public/papers/rsa_ccs17).

## Usage

Run the following docker command:

```
docker run --rm -v /path/to/your/keys:/keys --network none unnawut/roca-detect
```

Or analyze the keys in your current working directory:

```
docker run --rm -v $(pwd):/keys --network none unnawut/roca-detect
```

### Notes on the `docker` flags used:

`--rm` deletes the container after running. This ensures the container does not linger around with your keys data in there after the run.

`--network none` disables the container's network connection. This ensures your keys will not (intentionally or unintentionally) get sent out to the wide.
