function points = aggregate(particles)
%AGGREGATE Consolidate the particles into one column 
%
% _________________________________________________________________________
% INPUT ARGUMENTS
% particles = an array of parallel Markov chains
% _________________________________________________________________________
% OUTPUT ARGUMENTS
% points    = one column of particles' positions
%
% -------------------- Copyright (C) 2016 Khoa T. Tran --------------------
%   Created:        02-Aug-2016
%   Last edited:    02-Aug-2016
%   Matlab version: 8.6.0.267246 (R2015b)
%	Email:          khoa.tran@unsw.edu.au
%
%   This program is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or (at
%   your option) any later version.
%       This program is distributed in the hope that it will be useful, but
%   WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
%   General Public License for more details.
%       A copy of the GNU General Public License can be found at:
%   http://www.gnu.org/licenses/.
% _________________________________________________________________________

[n,d] = size(particles(end).pos); m = length(particles);
points = reshape(permute(reshape([particles.pos],[n,d,m]),[3 1 2]),[m*n d]);
