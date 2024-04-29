# postresql-rdkit-build
memo for building cartridge

## Abuot
- I wrote the memo because I could not build and insatll new version of pg cartridge of rdkit with simple command.

## how to build (in my case)
- clone the rdkit from repo and run the following command.

```
(chemdb) $ gh repo clone rdkit/rdkit
(chemdb) $ cd rdkit
(chemdb) $ mkdir build && cd build
(chemdb) $ bash build_script.sh
(chemdb) $ make -j8
(chemdb) $ make install
(chemdb) $ RDBASE=$PWD/.. PYTHONPATH=$RDBASE LD_LIBRARY_PATH=$RDBASE/lib:$LD_LIBRARY_PATH ctest
```
## REF
- https://iwatobipen.wordpress.com/2023/12/23/build-postgresql-rdkit-cartridge-and-install-new-version-of-postgresql-rdkit-postgresql-cheminformatics/


