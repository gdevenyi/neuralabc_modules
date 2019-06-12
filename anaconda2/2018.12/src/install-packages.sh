for package in mkl nipype nibabel simpleitk dipy jupyterlab nilearn bokeh \
		plotly keras tensorflow theano statsmodels seaborn numba \
		pytorch jcc tqdm multiprocess pathos vtk seaborn pytables zarr; do
	conda install --no-update-deps ${package}
done

pip install qbatch
