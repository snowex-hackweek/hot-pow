import numpy as np

def replace_and_fill_nodata_value(array, nodata_value, fill_value):
    """
    Replace nodata values with fill value in array.
    Parameters
    ----------
    array : numpy.ndarray
    nodata_value : value similar to array.dtype
    fill_value : value similar to array.dtype
    Returns
    -------
    masked_array : numpy.ndarray
    """
    if np.isnan(nodata_value):
        masked_array = np.nan_to_num(array, nan=fill_value)
    else:
        mask = array == nodata_value
        masked_array = np.ma.masked_array(array, mask=mask)
        masked_array = np.ma.filled(masked_array, fill_value=fill_value)

    return masked_array