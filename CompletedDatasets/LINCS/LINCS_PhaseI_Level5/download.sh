#!/bin/bash

function downloadFile {
  url="$1"
  fileName="$redirectedTempFolder/$2"

  if [ ! -f "$fileName" ];
  then
    curl -o "$fileName" -L "$url"
  fi
}

#make redirectedTempFolder
redirectedTempFolder=tmp
mkdir -p $redirectedTempFolder

#downloading files
downloadFile "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE92742&format=file&file=GSE92742%5FBroad%5FLINCS%5Fsig%5Finfo%2Etxt%2Egz" "GSE92742_Broad_LINCS_sig_info.txt.gz"
downloadFile "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE92742&format=file&file=GSE92742%5FBroad%5FLINCS%5FLevel5%5FCOMPZ%2EMODZ%5Fn473647x12328%2Egctx%2Egz" "LINCS_PhaseI_Level5.gctx.gz"
downloadFile "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE92742&format=file&file=GSE92742%5FBroad%5FLINCS%5Fgene%5Finfo%2Etxt%2Egz" "GSE92742_Broad_LINCS_gene_info.txt.gz"
downloadFile "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE92742&format=file&file=GSE92742%5FBroad%5FLINCS%5Fcell%5Finfo%2Etxt%2Egz" "GSE92742_Broad_LINCS_cell_info.txt.gz"
downloadFile "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE92742&format=file&file=GSE92742%5FBroad%5FLINCS%5Fpert%5Finfo%2Etxt%2Egz" "GSE92742_Broad_LINCS_pert_info.txt.gz"
downloadFile "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE92742&format=file&file=GSE92742%5FBroad%5FLINCS%5Fpert%5Fmetrics%2Etxt%2Egz" "GSE92742_Broad_LINCS_pert_metrics.txt.gz"
downloadFile "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE92742&format=file&file=GSE92742%5FBroad%5FLINCS%5Fsig%5Fmetrics%2Etxt%2Egz" "GSE92742_Broad_LINCS_sig_metrics.txt.gz"

cd $redirectedTempFolder
gunzip "LINCS_PhaseI_Level5.gctx.gz"
