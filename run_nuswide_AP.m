function run_nuswide_AP(bits, varargin)
if nargin < 1, bits = 32; end
assert(ismember(bits, [12 24 32 48]), 'unexpected num. of bits');

if bits >= 32, bins = bits/2; end

demo.AP('nus', bits, 'vggf', ...
    'nbins'        , bins    , ...
    'gamma'        , [1 0 0] , ...
    'lrmult'       , 0.01    , ...
    'lr'           , 0.02    , ...
    'lrdecay'      , 0       , ...
    'wdecay'       , 5e-4    , ...
    'batchsize'    , 256     , ...
    'epochs'       , 50      , ...
    'testInterval' , 20      , ...
    'gpus'         , 0       , ...
    varargin{:});

end
