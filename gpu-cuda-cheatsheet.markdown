# Flammie’s gpu cheat sheet

Things that I look up from the net way too often...

## CUDA initialization: CUDA Unknown error... `CUDA_VISIBLE_DEVICES`

From: https://github.com/pytorch/pytorch/issues/49081#issuecomment-1273002074

On nvidia this happens after suspend. Fix is to reload `nvidia_uvm` module:

```console
# modprobe -r nvidia_uvm
# modprobe nvidia_uvm
```


