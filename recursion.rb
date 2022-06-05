def fibs(n)
  count = 1
  arr = [0]
  while count != n
    count += 1
    arr[arr.length - 1].zero? ? arr[arr.length] = 1 : arr[arr.length] = arr[arr.length - 1] + arr[arr.length - 2]
  end
  arr
end

def fibs_rec(n, arr = [0, 1])
  if n.zero? then [0] else arr.length >= n ? arr[0..n] : fibs_rec(n, arr.push(arr[arr.length - 1] + arr[arr.length - 2])) end
end
