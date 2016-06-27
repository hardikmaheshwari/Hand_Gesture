function gesture3()
    while(1);
        r=obtain_ch1();
        if recognise3(r)==5
            fprintf('trigger activated function on\n');
            break;
        end
    end
    count_thumb=0;
    count_fist=0;
    pause(1);
    r=obtain_ch1();
    current_gesture=recognise3(r);
    if current_gesture == 3
        count_thumb=count_thumb+1;
    elseif current_gesture == 4
        count_fist=count_fist+1;
    end
    last_gesture=current_gesture;
    print_gesture3(current_gesture,count_thumb,count_fist);
    while(1)
        r=obtain_ch1();
        current_gesture=recognise3(r);
        if current_gesture~=0
            if current_gesture ~= last_gesture
                if current_gesture == 3
                    count_thumb=count_thumb+1;
                elseif current_gesture == 4
                    count_fist=count_fist+1;
                end
                print_gesture3(current_gesture,count_thumb,count_fist);
                last_gesture=current_gesture;
            end
        end
    end
end