.class final Lcom/d/a/aa$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/d/a/aa;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/d/a/aa;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    iput-object p2, p0, Lcom/d/a/aa$a;->a:Lcom/d/a/aa;

    .line 132
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    sget-object v0, Lcom/d/a/t;->a:Landroid/os/Handler;

    new-instance v1, Lcom/d/a/aa$a$1;

    invoke-direct {v1, p0, p1}, Lcom/d/a/aa$a$1;-><init>(Lcom/d/a/aa$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v0, p0, Lcom/d/a/aa$a;->a:Lcom/d/a/aa;

    .line 1083
    iget-wide v2, v0, Lcom/d/a/aa;->d:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/d/a/aa;->d:J

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/d/a/aa$a;->a:Lcom/d/a/aa;

    .line 1087
    iget-wide v2, v0, Lcom/d/a/aa;->e:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/d/a/aa;->e:J

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/d/a/aa$a;->a:Lcom/d/a/aa;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    .line 1097
    iget v1, v0, Lcom/d/a/aa;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/d/a/aa;->m:I

    .line 1098
    iget-wide v4, v0, Lcom/d/a/aa;->g:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/d/a/aa;->g:J

    .line 1099
    iget v1, v0, Lcom/d/a/aa;->m:I

    iget-wide v2, v0, Lcom/d/a/aa;->g:J

    .line 1122
    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 1099
    iput-wide v2, v0, Lcom/d/a/aa;->j:J

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/d/a/aa$a;->a:Lcom/d/a/aa;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    .line 2103
    iget v1, v0, Lcom/d/a/aa;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/d/a/aa;->n:I

    .line 2104
    iget-wide v4, v0, Lcom/d/a/aa;->h:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/d/a/aa;->h:J

    .line 2105
    iget v1, v0, Lcom/d/a/aa;->m:I

    iget-wide v2, v0, Lcom/d/a/aa;->h:J

    .line 2122
    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 2105
    iput-wide v2, v0, Lcom/d/a/aa;->k:J

    goto :goto_0

    .line 149
    :pswitch_4
    iget-object v1, p0, Lcom/d/a/aa$a;->a:Lcom/d/a/aa;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 3091
    iget v2, v1, Lcom/d/a/aa;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/d/a/aa;->l:I

    .line 3092
    iget-wide v2, v1, Lcom/d/a/aa;->f:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/d/a/aa;->f:J

    .line 3093
    iget v0, v1, Lcom/d/a/aa;->l:I

    iget-wide v2, v1, Lcom/d/a/aa;->f:J

    .line 3122
    int-to-long v4, v0

    div-long/2addr v2, v4

    .line 3093
    iput-wide v2, v1, Lcom/d/a/aa;->i:J

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
