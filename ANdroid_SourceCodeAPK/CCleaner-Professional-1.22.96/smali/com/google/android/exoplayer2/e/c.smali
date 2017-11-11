.class public final Lcom/google/android/exoplayer2/e/c;
.super Lcom/google/android/exoplayer2/a;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/e/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/exoplayer2/a;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private final f:Lcom/google/android/exoplayer2/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/e/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/e/c$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/android/exoplayer2/h;

.field private final j:Lcom/google/android/exoplayer2/b/e;

.field private k:Z

.field private l:J

.field private m:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/e/c$a;Landroid/os/Looper;Lcom/google/android/exoplayer2/e/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/e/c$a",
            "<TT;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/e/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/a;-><init>(I)V

    .line 78
    invoke-static {p1}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e/c$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/e/c;->g:Lcom/google/android/exoplayer2/e/c$a;

    .line 79
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/e/c;->h:Landroid/os/Handler;

    .line 80
    invoke-static {p3}, Lcom/google/android/exoplayer2/j/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/e/c;->f:Lcom/google/android/exoplayer2/e/a;

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/e/c;->i:Lcom/google/android/exoplayer2/h;

    .line 82
    new-instance v0, Lcom/google/android/exoplayer2/b/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/b/e;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/e/c;->j:Lcom/google/android/exoplayer2/b/e;

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->f:Lcom/google/android/exoplayer2/e/a;

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/e/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/e/c;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->m:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->j:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->a()V

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->i:Lcom/google/android/exoplayer2/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/e/c;->j:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/e/c;->a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/b/e;)I

    move-result v0

    .line 102
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->j:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/e/c;->k:Z

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->m:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/e/c;->l:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->m:Ljava/lang/Object;

    .line 2141
    iget-object v1, p0, Lcom/google/android/exoplayer2/e/c;->h:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 2142
    iget-object v1, p0, Lcom/google/android/exoplayer2/e/c;->h:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/e/c;->m:Ljava/lang/Object;

    .line 122
    :cond_2
    return-void

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->j:Lcom/google/android/exoplayer2/b/e;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/b/e;->d:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/e/c;->l:J

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->j:Lcom/google/android/exoplayer2/b/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/b/e;->e()V

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/e/c;->j:Lcom/google/android/exoplayer2/b/e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b/e;->c:Ljava/nio/ByteBuffer;

    .line 110
    iget-object v1, p0, Lcom/google/android/exoplayer2/e/c;->f:Lcom/google/android/exoplayer2/e/a;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/e/a;->a([BI)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/e/c;->m:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 1241
    iget v1, p0, Lcom/google/android/exoplayer2/a;->a:I

    .line 112
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    throw v0
.end method

.method protected final a(JZ)V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/e/c;->m:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/e/c;->k:Z

    .line 95
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/e/c;->m:Ljava/lang/Object;

    .line 127
    invoke-super {p0}, Lcom/google/android/exoplayer2/a;->o()V

    .line 128
    return-void
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/e/c;->k:Z

    return v0
.end method
