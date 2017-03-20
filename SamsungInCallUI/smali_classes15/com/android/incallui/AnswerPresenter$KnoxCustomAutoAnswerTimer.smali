.class Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;
.super Landroid/os/CountDownTimer;
.source "AnswerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxCustomAutoAnswerTimer"
.end annotation


# instance fields
.field private mAudioMode:I

.field final synthetic this$0:Lcom/android/incallui/AnswerPresenter;


# direct methods
.method public constructor <init>(Lcom/android/incallui/AnswerPresenter;JJI)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "interval"    # J
    .param p6, "audioMode"    # I

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;->this$0:Lcom/android/incallui/AnswerPresenter;

    .line 418
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 419
    iput p6, p0, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;->mAudioMode:I

    .line 420
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 424
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    # getter for: Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxCustomAutoAnswerTimer onAnswer"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;->this$0:Lcom/android/incallui/AnswerPresenter;

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;->this$0:Lcom/android/incallui/AnswerPresenter;

    # getter for: Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I
    invoke-static {v1}, Lcom/android/incallui/AnswerPresenter;->access$200(Lcom/android/incallui/AnswerPresenter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    .line 427
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;->mAudioMode:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 429
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 433
    # getter for: Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxCustomAutoAnswerTimer onTick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method