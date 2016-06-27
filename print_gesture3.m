function print_gesture3(current_gesture,count_thumb,count_fist)
    h = actxserver('PowerPoint.Application');
    if current_gesture == 1
        fprintf('relax position\n');
    elseif current_gesture == 6
        fprintf('tap');
        hShow = h.SlideShowWindows.Item(1);
        hShow.View.Previous;
        pause(1);
    elseif current_gesture == 3
        fprintf('thum');
        if mod(count_thumb,2)==1
            h.ActivePresentation.SlideShowSettings.Run;
            hShow = h.SlideShowWindows.Item(1);
        else
            hShow = h.SlideShowWindows.Item(1);
            hShow.View.Exit;
        end
        pause(1);
    elseif current_gesture == 4
        fprintf('fist');
        if mod(count_fist,2)==1
            h.Visible = 1;
            h.Presentations.Open('E:/mySlides.pptx');
        else
            h.ActivePresentation.Close;
            h.Quit;
            delete(h);
        end
        pause(1);
    elseif current_gesture == 5
        fprintf('chutki');
        hShow = h.SlideShowWindows.Item(1);
        hShow.View.Next;
        pause(1);
    elseif current_gesture == 2
        fprintf('fin\n');
    end
end