.class public final Lcom/avast/android/burger/c/a;
.super Lcom/avast/android/d/a;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avast/android/d/a;-><init>()V

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/avast/android/burger/c/a;->a:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/avast/android/d/a;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/avast/android/burger/c/a;->a:I

    .line 27
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sparse-switch p0, :sswitch_data_0

    .line 156
    const-string/jumbo v0, "UNDEFINED"

    :goto_0
    return-object v0

    .line 142
    :sswitch_0
    const-string/jumbo v0, "VERBOSE"

    goto :goto_0

    .line 144
    :sswitch_1
    const-string/jumbo v0, "DEBUG"

    goto :goto_0

    .line 146
    :sswitch_2
    const-string/jumbo v0, "INFO"

    goto :goto_0

    .line 148
    :sswitch_3
    const-string/jumbo v0, "WARNING"

    goto :goto_0

    .line 150
    :sswitch_4
    const-string/jumbo v0, "ERROR"

    goto :goto_0

    .line 152
    :sswitch_5
    const-string/jumbo v0, "WTF"

    goto :goto_0

    .line 154
    :sswitch_6
    const-string/jumbo v0, "NONE"

    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x64 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/avast/android/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    return-void
.end method

.method public final varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/d/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0, p1, p2}, Lcom/avast/android/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_0
    return-void
.end method

.method public final varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/d/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/avast/android/burger/c/a;->a:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/avast/android/d/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-void
.end method

.method public final varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/d/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/avast/android/d/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    return-void
.end method

.method public final varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/d/a;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public final varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-super {p0, p1, p2}, Lcom/avast/android/d/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_0
    return-void
.end method

.method public final varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/d/a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_0
    return-void
.end method
