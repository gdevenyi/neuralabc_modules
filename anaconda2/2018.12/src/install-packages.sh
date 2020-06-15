for package in mkl nipype nibabel simpleitk dipy jupyterlab nilearn bokeh \
		plotly keras tensorflow theano statsmodels seaborn numba \
		pytorch jcc tqdm multiprocess pathos vtk seaborn pytables zarr \
		pyqt scikit-learn pillow pytest-cov pytest-mock pytest-timeout flake8 \
		pyface traitsui pyvista mayavi PySurfer neo pytest-faulthandler \
		pytest-sugar pydocstyle codespell python-picard cupy r-base r-essentials; do
	conda install --no-update-deps ${package} --yes
done

pip install qbatch
