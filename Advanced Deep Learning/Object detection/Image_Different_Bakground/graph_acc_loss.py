import matplotlib.pyplot as plt
from matplotlib import style

style.use("ggplot")

model_name = "model-1585964168" #"model-1570499409" # grab whichever model name you want here. We could also just reference the MODEL_NAME if you're in a notebook still.


def create_acc_loss_graph(model_name):
    contents = open("model.log", "r").read().split("\n")

    times = []
    val_losses = []

    for c in contents:
        if model_name in c:
            name, timestamp, val_loss = c.split(",")

            times.append(float(timestamp))

            val_losses.append(float(val_loss))


    fig = plt.figure()

    ax1 = plt.subplot2grid((2,1), (0,0))
    ax2 = plt.subplot2grid((2,1), (1,0), sharex=ax1)


    ax2.plot(times,val_losses, label="val_loss")
    ax2.legend(loc=2)
    plt.show()

create_acc_loss_graph(model_name)