for package in nipype nibabel simpleitk dipy jupyterlab nilearn bokeh plotly keras tensorflow theano statsmodels seaborn numba pytorch; do
	conda install --no-update-deps ${package}
done
