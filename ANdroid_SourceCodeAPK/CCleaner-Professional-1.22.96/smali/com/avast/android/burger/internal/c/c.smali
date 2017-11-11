.class public final Lcom/avast/android/burger/internal/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/evernote/android/job/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/evernote/android/job/a;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 26
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 20
    :pswitch_0
    new-instance v0, Lcom/avast/android/burger/internal/c/g;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/c/g;-><init>()V

    goto :goto_0

    .line 18
    :sswitch_0
    const-string/jumbo v2, "HeartBeatJob"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "DeviceInfoJob"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "BurgerJob"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 22
    :pswitch_1
    new-instance v0, Lcom/avast/android/burger/internal/c/e;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/c/e;-><init>()V

    goto :goto_0

    .line 24
    :pswitch_2
    new-instance v0, Lcom/avast/android/burger/internal/c/b;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/c/b;-><init>()V

    goto :goto_0

    .line 18
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a37d2df -> :sswitch_0
        -0x8641918 -> :sswitch_2
        0x60e854d9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
