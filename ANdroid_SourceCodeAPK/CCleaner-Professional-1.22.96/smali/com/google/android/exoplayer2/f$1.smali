.class final Lcom/google/android/exoplayer2/f$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/f;-><init>([Lcom/google/android/exoplayer2/l;Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/f;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/f;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/f$1;->a:Lcom/google/android/exoplayer2/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v3, p0, Lcom/google/android/exoplayer2/f$1;->a:Lcom/google/android/exoplayer2/f;

    .line 1281
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1326
    :cond_0
    return-void

    .line 1283
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, v3, Lcom/google/android/exoplayer2/f;->d:I

    .line 1284
    iget-object v0, v3, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e$a;

    .line 1285
    iget-boolean v2, v3, Lcom/google/android/exoplayer2/f;->c:Z

    iget v4, v3, Lcom/google/android/exoplayer2/f;->d:I

    invoke-interface {v0, v2, v4}, Lcom/google/android/exoplayer2/e$a;->a(ZI)V

    goto :goto_0

    .line 1290
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v3, Lcom/google/android/exoplayer2/f;->f:Z

    .line 1291
    iget-object v0, v3, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move v0, v2

    .line 1290
    goto :goto_1

    .line 1297
    :pswitch_2
    iget v0, v3, Lcom/google/android/exoplayer2/f;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Lcom/google/android/exoplayer2/f;->e:I

    if-nez v0, :cond_0

    .line 1298
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/g$b;

    iput-object v0, v3, Lcom/google/android/exoplayer2/f;->i:Lcom/google/android/exoplayer2/g$b;

    .line 1299
    iget-object v0, v3, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e$a;

    .line 1300
    invoke-interface {v0}, Lcom/google/android/exoplayer2/e$a;->g()V

    goto :goto_3

    .line 1306
    :pswitch_3
    iget v0, v3, Lcom/google/android/exoplayer2/f;->e:I

    if-nez v0, :cond_0

    .line 1307
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/g$b;

    iput-object v0, v3, Lcom/google/android/exoplayer2/f;->i:Lcom/google/android/exoplayer2/g$b;

    .line 1308
    iget-object v0, v3, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e$a;

    .line 1309
    invoke-interface {v0}, Lcom/google/android/exoplayer2/e$a;->g()V

    goto :goto_4

    .line 1316
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 1317
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/o;

    iput-object v1, v3, Lcom/google/android/exoplayer2/f;->g:Lcom/google/android/exoplayer2/o;

    .line 1318
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iput-object v0, v3, Lcom/google/android/exoplayer2/f;->h:Ljava/lang/Object;

    .line 1319
    iget-boolean v0, v3, Lcom/google/android/exoplayer2/f;->b:Z

    if-eqz v0, :cond_2

    .line 1320
    iput-boolean v2, v3, Lcom/google/android/exoplayer2/f;->b:Z

    .line 1321
    iget v0, v3, Lcom/google/android/exoplayer2/f;->j:I

    iget-wide v4, v3, Lcom/google/android/exoplayer2/f;->k:J

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/android/exoplayer2/f;->a(IJ)V

    .line 1323
    :cond_2
    iget-object v0, v3, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e$a;

    .line 1324
    invoke-interface {v0}, Lcom/google/android/exoplayer2/e$a;->f()V

    goto :goto_5

    .line 1329
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/d;

    .line 1330
    iget-object v1, v3, Lcom/google/android/exoplayer2/f;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/e$a;

    .line 1331
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/e$a;->a(Lcom/google/android/exoplayer2/d;)V

    goto :goto_6

    .line 1281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
