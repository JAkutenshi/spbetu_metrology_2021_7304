import numpy as np

n = 30
# это равномерное распределение
random_float_array = np.random.uniform(0, 20, n)
random_float_array = sorted(random_float_array)
print(random_float_array, len(random_float_array))
 
# это экспоненциальное распределение
random_float_array = np.array(np.random.exponential(10, n))
random_float_array = sorted(random_float_array)
print(random_float_array, len(random_float_array))
 
# это реелевское распределение
random_float_array = np.array(np.random.rayleigh(8, n))
random_float_array = sorted(random_float_array)
print(random_float_array, len(random_float_array))