
cdef extern from "LayerMaker.h":
    cdef cppclass LayerMaker2:
        pass

cdef extern from "InputLayerMaker.h":
    cdef cppclass InputLayerMaker[T](LayerMaker2):
        InputLayerMaker *numPlanes( int _numPlanes ) except +
        InputLayerMaker *imageSize( int _imageSize ) except +
        @staticmethod
        InputLayerMaker *instance() except +

cdef extern from "NormalizationLayerMaker.h":
    cdef cppclass NormalizationLayerMaker(LayerMaker2):
        NormalizationLayerMaker *translate( float translate ) except +
        NormalizationLayerMaker *scale( float scale ) except +
        @staticmethod
        NormalizationLayerMaker *instance() except +

cdef extern from "FullyConnectedMaker.h":
    cdef cppclass FullyConnectedMaker(LayerMaker2):
        FullyConnectedMaker *numPlanes( int numPlanes ) except +
        FullyConnectedMaker *imageSize( int imageSize ) except +
        FullyConnectedMaker *biased() except +
        FullyConnectedMaker *biased(bint _biased) except +
        FullyConnectedMaker *linear() except +
        FullyConnectedMaker *tanh() except +
        FullyConnectedMaker *sigmoid() except +
        FullyConnectedMaker *relu() except +
        @staticmethod
        FullyConnectedMaker *instance() except +

cdef extern from "ConvolutionalMaker.h":
    cdef cppclass ConvolutionalMaker(LayerMaker2):
        ConvolutionalMaker *numFilters( int numFilters ) except +
        ConvolutionalMaker *filterSize( int imageSize ) except +
        ConvolutionalMaker *padZeros() except +
        ConvolutionalMaker *padZeros(bint _padZeros) except +
        ConvolutionalMaker *biased() except +
        ConvolutionalMaker *biased(bint _biased) except +
        ConvolutionalMaker *linear() except +
        ConvolutionalMaker *tanh() except +
        ConvolutionalMaker *sigmoid() except +
        ConvolutionalMaker *relu() except +
        @staticmethod
        ConvolutionalMaker *instance() except +

cdef extern from "PoolingMaker.h":
    cdef cppclass PoolingMaker(LayerMaker2):
        PoolingMaker *poolingSize( int _poolingsize ) except +
        PoolingMaker *padZeros( int _padZeros ) except +
        @staticmethod
        PoolingMaker *instance() except +

cdef extern from "ForceBackpropLayerMaker.h":
    cdef cppclass ForceBackpropLayerMaker(LayerMaker2):
        @staticmethod
        ForceBackpropLayerMaker *instance() except +

cdef extern from "LayerMaker.h":
    cdef cppclass SquareLossMaker(LayerMaker2):
        @staticmethod
        SquareLossMaker *instance() except +

cdef extern from "LayerMaker.h":
    cdef cppclass SoftMaxMaker(LayerMaker2):
        @staticmethod
        SoftMaxMaker *instance()


