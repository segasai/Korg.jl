"""
    rayleigh(λs, nH_I, nHe_II)

Absorption coefficient from Rayleigh scattering by neutral H and He.  Formulation taken from Colgan+
2016.  The formulation for H is adapted from Lee 2005, which states that it is applicable redward of 
Lyman alpha. The formulation for He is adapted from Dalgarno 1962 and Dalgarno & Kingston 1960.
"""
function rayleigh(λs::AbstractVector{<:Real}, nH_I, nHe_I)
    σth = 6.65246e-25 #Thompson scattering cross section [cm^2]

    #(ħω/ 2E_H)^2 in Colgan+ 2016.  The photon energy over 2Ryd
    E_2Ryd_2 = @. (hplanck_eV * c_cgs / (2 * Rydberg_eV * λs))^2
    E_2Ryd_4 = E_2Ryd_2.^2
    E_2Ryd_6 = E_2Ryd_2.*E_2Ryd_4
    E_2Ryd_8 = E_2Ryd_4.^2

    #Colgan+ 2016 equation 6
    σH_σth = @. 20.24E_2Ryd_4 + 239.2E_2Ryd_6 + 2256E_2Ryd_8
    #Colgan+ 2016 equation 7
    σHe_σth = @. 1.913E_2Ryd_4 + 4.52E_2Ryd_6 + 7.90E_2Ryd_8

    σH_HE = @. (nH_I*σH_σth + nHe_I*σHe_σth) * σth

    #Dalgarno & Williams 1962 equation 3
    invλ2 = 1 ./ (λs .^ 2)
    invλ4 = invλ2 .^ 2
    invλ6 = invλ2 .* invλ4
    invλ8 = invλ4 .^ 2
    σ_H2 = 8.14e-13*invλ4 + 1.28e-6*invλ6 + 1.61*invλ8

    σ_H_HE .+ σ_H2
end

