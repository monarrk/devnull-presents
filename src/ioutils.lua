ioutils = {}

local function isContained(a, val) 
  for index, value in ipairs(a) do
    if value == val then
       return true
    end
  end
  return false
end

function ioutils.questionr(q, options, results)
    print(q)
    i, v = 1, #options
    for i,v in pairs(options) do print(i,v) end
    txt=io.read()
    text=tonumber(txt)
    if text>v then
        results={nil}
    end
    return results[text]
end


function ioutils.questionv(q, valid)
    print(q)
    for i,v in pairs(valid) do print(v) end
    answer=io.read()
    if #valid == 0 then
        return answer;
    else
        if isContained(valid, answer)==true then
            return answer
        else
            print("'"..answer.."' is not a valid input :/")
        end
    end
end

function ioutils.print_tab(tab)
    for i,v in pairs(tab) do
        print(i,v)
    end
end
function ioutils.print_tab_without_index(tab)
    for i,v in pairs(tab) do
        print(v)
    end
end

function ioutils.shuffle(a)
    len = #a
    b = a
    k=len*2
    for i=#a, k do
        j = math.random(i+1)
        temp=b[i]
        b[i] = b[j]
        b[j] = temp
    end
    return b
end