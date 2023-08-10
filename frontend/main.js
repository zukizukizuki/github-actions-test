// API の URL を 'http://203.0.113.10' のように指定してください。
const API_URL_PREFIX = ''

const input1Element = document.getElementById('input1')
const input2Element = document.getElementById('input2')
const sumElement = document.getElementById('sum')

async function onInputChange() {
  const input1 = input1Element.value
  const input2 = input2Element.value

  if (input1 == '' || input2 == '') {
    sumElement.innerText = ''
    return
  }

  const query = new URLSearchParams({
    input1: parseInt(input1),
    input2: parseInt(input2)
  })

  const response = await fetch(`${API_URL_PREFIX}/api/sum?${query}`)
  const responseBody = await response.json()

  sumElement.innerText = responseBody.sum
}

input1Element.addEventListener('change', onInputChange)
input2Element.addEventListener('change', onInputChange)
