---
title: "Value Types"
---

{{< toc >}}

# Campaign

## Type

| Value | Description    |
| ----- | -------------- |
| 1     | Voice Campaign |
| 2     | SMS Campaign   |

## Campaign Status

| Value | Description |
| ----- | ----------- |
| 0     | Pending     |
| 1     | Sending     |
| 2     | Submitted   |
| 3     | Paused      |
| 4     | Cancelled   |
| 5     | Completed   |

## SMS On Busy

| Value | Description   |
| ----- | ------------- |
| 0     | Never         |
| 1     | On First Call |
| 2     | On Last Call  |

## Answer Phone Message

| Value | Description   |
| ----- | ------------- |
| 0     | Never         |
| 1     | On First Call |
| 2     | On Last Call  |

# Call

## Stage

| Value | Description                     |
| ----- | ------------------------------- |
| 0     | Non                             |
| 1     | Correct  Callee                 |
| 2     | Wrong Callee                    |
| 3     | Call Declined                   |
| 4     | Correct Collee HungUp           |
| 5     | Wrong Callee HungUp             |
| 7     | Callee Transfer Request         |
| 8     | Callee Transfer Accepted        |
| 9     | Excluded                        |
| 10    | Answered                        |
| 11    | Answerphone Message Not Left    |
| 12    | Answerphone Message Left        |
| 15    | Wrong Callee Transfer Requested |
| 16    | Call Transferred To Call Centre |
| 17    | Transferred To Payment Line     |
| 18    | Caller Requested Call Back      |
| 19    | Wrong Callee Transfer Accepted  |
| 20    | Call Dropped                    |

## Outcome


| Value | Description                  |
| ----- | ---------------------------- |
| 1     | Answered                     |
| 2     | Unobtainable                 |
| 3     | Busy                         |
| 4     | Answerphone Message Not Left |
| 5     | Answerphone Message Left     |
| 6     | No Answer                    |
| 7     | Overflow                     |
| 8     | Out Of Time                  |
| 9     | Fax                          |
| 10    | Unknown                      |
| 11    | Excluded Number              |
| 12    | No Connection                |
| 13    | Invalid Number               |
    