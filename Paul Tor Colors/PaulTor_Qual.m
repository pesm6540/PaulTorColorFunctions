function [PTCS] = PaulTor_Qual(CS)
% Paul Tor's Qualitative Color Schemes
    % 7 Colors (Grey --> 6 Colors)
    if CS == "Bright"
        PTCS = 1/255.*[68 119 170;  %Blue
            102 204 238;            %Cyan
            34 136 51;              %Green
            204 187 68;             %Yellow
            238 102 119;            %Red
            170 51 119;             %Purple
            187 187 187];           %Grey
    %5 Colors (B/W --> 3 Colors)
    elseif CS == "High-Contrast"
        PTCS = 1/255.*[221 170 51;  %Yellow
            187 85 102;             %Red
            0 68 136;               %Blue
            255 255 255;            %White
            0 0 0];                 %Black
    % 7 Colors (Grey --> 6 Colors)
    elseif CS == "Vibrant"
        PTCS = 1/255.*[0 119 187;   %Blue  
            51 187 238;             %Cyan
            0 153 136;              %Teal
            238 119 51;             %Orange
            204 51 17;              %Red
            238 51 119;             %Magenta
            187 187 187];           %Grey
    % 10 Colors (Grey --> 9 Colors)
    elseif CS == "Muted"
        PTCS = 1/255.*[51 34 136;   %Blue
            136 204 238;            %Cyan
            68 170 153;             %Teal  
            17 119 51;              %Green
            153 153 51;             %Olive
            221 204 119;            %Sand
            204 102 119;            %Rose
            136 34 85;              %Wine
            170 68 153;             %Purple
            221 221 221];           %Pale Grey
    % 8 Colors (with B/W --> 6 Colors)
    elseif CS == "Meduim-Contrast"
        PTCS = 1/255.*[238 204 102  %Light Yellow
            238 153 170;            %Light Red
            102 153 204;            %Light Blue
            153 119 0;              %Dark Yellow
            153 68 85;              %Dark Red
            0 68 136;               %Dark Blue
            255 255 255;            %White
            0 0 0];                 %Black
    % 12 Colors (2 Greys --> 10 Colors)
    elseif CS == "Pale-Dark"
        PTCS = 1/255.*[187 204 238; %Pale Blue
            204 238 255;            %Pale Cyan
            204 221 170;            %Pale Green
            238 238 187;            %Pale Yellow
            255 204 204;            %Pale Red
            34 34 85;               %Dark Blue
            34 85 85;               %Dark Cyan
            24 85 34;               %Dark Green
            102 102 51;             %Dark Yellow
            102 51 51;              %Dark Red
            221 221 221;            %Pale Grey
            85 85 85];              %Dark Grey
    % 9 Colors (1 Grey Err --> 8 Colors)
    elseif CS == "Light"
        PTCS = 1/255.*[119 170 221; %Light Blue
            153 221 255;            %Light Cyan
            68 187 153;             %Mint
            187 204 51;             %Pear
            170 170 0;              %Olive
            238 221 136;            %Light Yellow
            238 136 102;            %Orange
            255 170 187;            %Pink   
            221 221 221];           %Pale Grey
    end 
end

