.class final Lcom/google/android/exoplayer2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/f/c$a;
.implements Lcom/google/android/exoplayer2/f/d$a;
.implements Lcom/google/android/exoplayer2/h/h$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/g$a;,
        Lcom/google/android/exoplayer2/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Lcom/google/android/exoplayer2/f/c$a;",
        "Lcom/google/android/exoplayer2/f/d$a;",
        "Lcom/google/android/exoplayer2/h/h$b;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/google/android/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/g$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private C:Lcom/google/android/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/g$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private D:Lcom/google/android/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/g$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private E:Lcom/google/android/exoplayer2/o;

.field final a:Landroid/os/Handler;

.field b:Z

.field c:I

.field private final d:[Lcom/google/android/exoplayer2/l;

.field private final e:[Lcom/google/android/exoplayer2/m;

.field private final f:Lcom/google/android/exoplayer2/h/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/i;

.field private final h:Lcom/google/android/exoplayer2/j/p;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Landroid/os/Handler;

.field private final k:Lcom/google/android/exoplayer2/o$b;

.field private final l:Lcom/google/android/exoplayer2/o$a;

.field private m:Lcom/google/android/exoplayer2/g$b;

.field private n:Lcom/google/android/exoplayer2/l;

.field private o:Lcom/google/android/exoplayer2/j/g;

.field private p:Lcom/google/android/exoplayer2/f/d;

.field private q:[Lcom/google/android/exoplayer2/l;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:J

.field private x:J

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/l;Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/i;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/g$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/l;",
            "Lcom/google/android/exoplayer2/h/h",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/i;",
            "Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/g$b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    .line 141
    iput-object p2, p0, Lcom/google/android/exoplayer2/g;->f:Lcom/google/android/exoplayer2/h/h;

    .line 142
    iput-object p3, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    .line 143
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/g;->r:Z

    .line 144
    iput-object p5, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    .line 146
    iput-object p6, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 148
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/exoplayer2/m;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->e:[Lcom/google/android/exoplayer2/m;

    move v0, v1

    .line 149
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 150
    aget-object v2, p1, v0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/l;->a(I)V

    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->e:[Lcom/google/android/exoplayer2/m;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/google/android/exoplayer2/l;->b()Lcom/google/android/exoplayer2/m;

    move-result-object v3

    aput-object v3, v2, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/j/p;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Lcom/google/android/exoplayer2/j/p;

    .line 154
    new-array v0, v1, [Lcom/google/android/exoplayer2/l;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    .line 155
    new-instance v0, Lcom/google/android/exoplayer2/o$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    .line 156
    new-instance v0, Lcom/google/android/exoplayer2/o$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 2096
    iput-object p0, p2, Lcom/google/android/exoplayer2/h/h;->b:Lcom/google/android/exoplayer2/h/h$b;

    .line 161
    new-instance v0, Lcom/google/android/exoplayer2/j/n;

    const-string/jumbo v1, "ExoPlayerImplInternal:Handler"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/j/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->i:Landroid/os/HandlerThread;

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 164
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    .line 165
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 325
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    if-eq v0, p1, :cond_0

    .line 326
    iput p1, p0, Lcom/google/android/exoplayer2/g;->u:I

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 599
    :goto_0
    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/g;->x:J

    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Lcom/google/android/exoplayer2/j/p;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/g;->x:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/j/p;->a(J)V

    .line 601
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 602
    iget-wide v4, p0, Lcom/google/android/exoplayer2/g;->x:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/l;->a(J)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/g$a;->j:J

    goto :goto_0

    .line 604
    :cond_1
    return-void
.end method

.method private a(JJ)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 487
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    add-long v0, p1, p3

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 490
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/g$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1099
    :goto_0
    if-eqz p0, :cond_0

    .line 1100
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/g$a;->c()V

    .line 1101
    iget-object p0, p0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    goto :goto_0

    .line 1103
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 672
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 673
    invoke-interface {p0}, Lcom/google/android/exoplayer2/l;->j()V

    .line 675
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/o;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 889
    move v1, v0

    .line 890
    :goto_0
    if-ne v1, v0, :cond_0

    .line 891
    if-gez p3, :cond_0

    .line 892
    add-int/lit8 p3, p3, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    const/4 v2, 0x1

    .line 893
    invoke-virtual {p2, p3, v1, v2}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/o$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/o;->a(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 895
    :cond_0
    if-ne v1, v0, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->e()V

    .line 916
    :goto_1
    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/g$a;)V

    .line 904
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/g;->A:I

    .line 905
    iput-object v3, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 906
    iput-object v3, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 907
    iput-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 910
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/g;->b(I)Landroid/util/Pair;

    move-result-object v1

    .line 911
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 912
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 914
    new-instance v3, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 915
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    goto :goto_2
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->t:Z

    if-eq v0, p1, :cond_0

    .line 333
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/g;->t:Z

    .line 334
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 336
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 334
    goto :goto_0
.end method

.method private a([ZI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 1145
    new-array v0, p2, [Lcom/google/android/exoplayer2/l;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    move v8, v9

    move v1, v9

    .line 1147
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    array-length v0, v0

    if-ge v8, v0, :cond_7

    .line 1148
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    aget-object v0, v0, v8

    .line 1149
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 26186
    iget-object v2, v2, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/h/g;

    .line 27056
    iget-object v2, v2, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    aget-object v3, v2, v8

    .line 1150
    if-eqz v3, :cond_6

    .line 1151
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    add-int/lit8 v12, v1, 0x1

    aput-object v0, v2, v1

    .line 1152
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l;->d()I

    move-result v1

    if-nez v1, :cond_5

    .line 1154
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/g;->r:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move v10, v11

    .line 1156
    :goto_1
    aget-boolean v1, p1, v8

    if-nez v1, :cond_1

    if-eqz v10, :cond_1

    move v5, v11

    .line 1158
    :goto_2
    invoke-interface {v3}, Lcom/google/android/exoplayer2/h/f;->b()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/exoplayer2/Format;

    move v2, v9

    .line 1159
    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 1160
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/h/f;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1159
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    move v10, v9

    .line 1154
    goto :goto_1

    :cond_1
    move v5, v9

    .line 1156
    goto :goto_2

    .line 1163
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/f/e;

    aget-object v2, v2, v8

    iget-wide v3, p0, Lcom/google/android/exoplayer2/g;->x:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/g$a;->j:J

    invoke-interface/range {v0 .. v7}, Lcom/google/android/exoplayer2/l;->a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/f/e;JZJ)V

    .line 1165
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l;->c()Lcom/google/android/exoplayer2/j/g;

    move-result-object v1

    .line 1166
    if-eqz v1, :cond_4

    .line 1167
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/j/g;

    if-eqz v2, :cond_3

    .line 1168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Multiple renderer media clocks enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    throw v0

    .line 1171
    :cond_3
    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/j/g;

    .line 1172
    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/l;

    .line 1175
    :cond_4
    if-eqz v10, :cond_5

    .line 1176
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l;->e()V

    :cond_5
    move v1, v12

    .line 1147
    :cond_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1181
    :cond_7
    return-void
.end method

.method private b(IJ)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->p:Lcom/google/android/exoplayer2/f/d;

    if-nez v0, :cond_1

    .line 523
    cmp-long v0, p2, v8

    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/g;->a(J)V

    .line 593
    :cond_0
    :goto_0
    return-wide p2

    .line 529
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->c()V

    .line 530
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 531
    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 533
    cmp-long v0, p2, v8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v0, v0, Lcom/google/android/exoplayer2/g$a;->e:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget v0, v0, Lcom/google/android/exoplayer2/g$a;->e:I

    if-ne p1, v0, :cond_3

    .line 538
    :cond_2
    const/4 p1, -0x1

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_5

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_c

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->c()V

    move-object v0, v2

    .line 561
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eq v0, v1, :cond_8

    .line 562
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v5, v4

    move v1, v3

    :goto_2
    if-ge v1, v5, :cond_7

    aget-object v6, v4, v1

    .line 563
    invoke-interface {v6}, Lcom/google/android/exoplayer2/l;->k()V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 549
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    move-object v0, v2

    .line 550
    :goto_3
    if-eqz v1, :cond_4

    .line 551
    iget v4, v1, Lcom/google/android/exoplayer2/g$a;->e:I

    if-ne v4, p1, :cond_6

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-eqz v4, :cond_6

    move-object v0, v1

    .line 556
    :goto_4
    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    goto :goto_3

    .line 554
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g$a;->c()V

    goto :goto_4

    .line 565
    :cond_7
    new-array v1, v3, [Lcom/google/android/exoplayer2/l;

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    .line 566
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/j/g;

    .line 567
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/l;

    .line 571
    :cond_8
    iput v3, p0, Lcom/google/android/exoplayer2/g;->A:I

    .line 572
    if-eqz v0, :cond_b

    .line 573
    iput-object v2, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 574
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/g$a;)V

    .line 575
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->i()V

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 577
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 578
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->i:Z

    if-eqz v0, :cond_9

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/f/c;

    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplayer2/f/c;->a(J)J

    move-result-wide p2

    .line 581
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/g;->a(J)V

    .line 582
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->h()V

    .line 591
    :cond_a
    :goto_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 592
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 584
    :cond_b
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 585
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 586
    iput-object v2, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 587
    cmp-long v0, p2, v8

    if-eqz v0, :cond_a

    .line 588
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/g;->a(J)V

    goto :goto_5

    :cond_c
    move-object v0, v2

    goto :goto_1
.end method

.method private b(I)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 919
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 19136
    invoke-virtual {v0, p1, v1, v6}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    iget v1, v1, Lcom/google/android/exoplayer2/o$a;->c:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    .line 20108
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;

    .line 921
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    iget v2, v0, Lcom/google/android/exoplayer2/o$b;->f:I

    .line 922
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    .line 20275
    iget-wide v0, v0, Lcom/google/android/exoplayer2/o$b;->j:J

    .line 922
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    .line 21245
    iget-wide v4, v3, Lcom/google/android/exoplayer2/o$b;->h:J

    .line 923
    add-long/2addr v0, v4

    .line 924
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 22136
    invoke-virtual {v3, v2, v4, v6}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    .line 925
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    iget v3, v3, Lcom/google/android/exoplayer2/o$b;->g:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 22326
    iget-wide v4, v3, Lcom/google/android/exoplayer2/o$a;->d:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/b;->a(J)J

    move-result-wide v4

    .line 926
    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 927
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 22333
    iget-wide v4, v3, Lcom/google/android/exoplayer2/o$a;->d:J

    .line 927
    sub-long/2addr v0, v4

    .line 928
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    add-int/lit8 v3, v2, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 23136
    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move v2, v3

    .line 928
    goto :goto_0

    .line 930
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 369
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->h:Lcom/google/android/exoplayer2/j/p;

    .line 18043
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/j/p;->a:Z

    if-nez v2, :cond_0

    .line 18044
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/exoplayer2/j/p;->a:Z

    .line 18045
    iget-wide v2, v1, Lcom/google/android/exoplayer2/j/p;->b:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/j/p;->b(J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplayer2/j/p;->c:J

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 371
    invoke-interface {v3}, Lcom/google/android/exoplayer2/l;->e()V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/g$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/g$a",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1107
    .line 1108
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    array-length v0, v0

    new-array v4, v0, [Z

    move v0, v1

    move v2, v1

    .line 1109
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1110
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    aget-object v5, v3, v0

    .line 1111
    invoke-interface {v5}, Lcom/google/android/exoplayer2/l;->d()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    aput-boolean v3, v4, v0

    .line 23186
    iget-object v3, p1, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/h/g;

    .line 24056
    iget-object v3, v3, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    aget-object v3, v3, v0

    .line 1113
    if-eqz v3, :cond_2

    .line 1115
    add-int/lit8 v2, v2, 0x1

    .line 1109
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1111
    goto :goto_1

    .line 1116
    :cond_2
    aget-boolean v3, v4, v0

    if-eqz v3, :cond_0

    .line 1118
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/l;

    if-ne v5, v3, :cond_3

    .line 1120
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->h:Lcom/google/android/exoplayer2/j/p;

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/j/g;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/j/g;->r()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/exoplayer2/j/p;->a(J)V

    .line 1121
    iput-object v8, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/j/g;

    .line 1122
    iput-object v8, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/l;

    .line 1124
    :cond_3
    invoke-static {v5}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/l;)V

    .line 1125
    invoke-interface {v5}, Lcom/google/android/exoplayer2/l;->k()V

    goto :goto_2

    .line 1129
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Lcom/google/android/exoplayer2/h/h;

    .line 24186
    iget-object v1, p1, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/h/g;

    .line 1129
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/h/h;->a(Lcom/google/android/exoplayer2/h/g;)V

    .line 1130
    iput-object p1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 1131
    invoke-direct {p0, v4, v2}, Lcom/google/android/exoplayer2/g;->a([ZI)V

    .line 1132
    return-void
.end method

.method private c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Lcom/google/android/exoplayer2/j/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/p;->a()V

    .line 377
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 378
    invoke-static {v3}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/l;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method private d()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/d;
        }
    .end annotation

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/f/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/f/c;->g()J

    move-result-wide v0

    .line 389
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/g;->a(J)V

    .line 400
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iput-wide v0, v4, Lcom/google/android/exoplayer2/g$b;->c:J

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/g;->w:J

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v0, v0

    if-nez v0, :cond_4

    move-wide v0, v2

    .line 406
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v1, v1, Lcom/google/android/exoplayer2/g$a;->e:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 18136
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v0

    .line 18333
    iget-wide v0, v0, Lcom/google/android/exoplayer2/o$a;->d:J

    .line 407
    :cond_1
    iput-wide v0, v4, Lcom/google/android/exoplayer2/g$b;->d:J

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/l;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/l;->q()Z

    move-result v0

    if-nez v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/j/g;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/j/g;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/g;->x:J

    .line 394
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Lcom/google/android/exoplayer2/j/p;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/g;->x:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/j/p;->a(J)V

    .line 398
    :goto_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g;->x:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/g$a;->j:J

    sub-long/2addr v0, v4

    goto :goto_1

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Lcom/google/android/exoplayer2/j/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/p;->r()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/g;->x:J

    goto :goto_3

    .line 404
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/f/c;

    .line 405
    invoke-interface {v0}, Lcom/google/android/exoplayer2/f/c;->h()J

    move-result-wide v0

    goto :goto_2
.end method

.method private e()V
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->f()V

    .line 608
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i;->b()V

    .line 609
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 610
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 625
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->h:Lcom/google/android/exoplayer2/j/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/j/p;->a()V

    .line 626
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/j/g;

    .line 627
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/l;

    .line 628
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 630
    :try_start_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/l;)V

    .line 631
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l;->k()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 634
    :goto_2
    const-string/jumbo v5, "ExoPlayerImplInternal"

    const-string/jumbo v6, "Stop failed."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 637
    :cond_0
    new-array v0, v2, [Lcom/google/android/exoplayer2/l;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    .line 638
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/g$a;)V

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->p:Lcom/google/android/exoplayer2/f/d;

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->p:Lcom/google/android/exoplayer2/f/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/f/d;->a()V

    .line 642
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->p:Lcom/google/android/exoplayer2/f/d;

    .line 644
    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/g;->y:Z

    .line 645
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/g;->z:Z

    .line 646
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 647
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 648
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 649
    iput-object v7, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    .line 650
    iput v2, p0, Lcom/google/android/exoplayer2/g;->A:I

    .line 651
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/g;->a(Z)V

    .line 652
    return-void

    .line 638
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    goto :goto_3

    .line 632
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-ne v0, v1, :cond_1

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 792
    invoke-interface {v3}, Lcom/google/android/exoplayer2/l;->g()Z

    move-result v3

    if-nez v3, :cond_2

    .line 798
    :cond_1
    :goto_1
    return-void

    .line 791
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/f/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/f/c;->c()V

    goto :goto_1
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1080
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/f/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/f/c;->f()J

    move-result-wide v0

    .line 1081
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 1082
    iget-wide v2, p0, Lcom/google/android/exoplayer2/g;->x:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/g$a;->j:J

    sub-long/2addr v2, v4

    .line 1084
    sub-long/2addr v0, v2

    .line 1085
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/i;->a(J)Z

    move-result v0

    .line 1086
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(Z)V

    .line 1087
    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iput-boolean v6, v0, Lcom/google/android/exoplayer2/g$a;->l:Z

    .line 1089
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/f/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/f/c;->e()Z

    .line 1096
    :goto_0
    return-void

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/g$a;->l:Z

    goto :goto_0

    .line 1094
    :cond_1
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/g;->a(Z)V

    goto :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1135
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v2, v2, Lcom/google/android/exoplayer2/g$a;->e:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 25136
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v1

    .line 25333
    iget-wide v2, v1, Lcom/google/android/exoplayer2/o$a;->d:J

    .line 1137
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/g$b;->c:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->y:Z

    .line 1140
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->g:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->z:Z

    .line 1141
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 216
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/f/c;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/f/f;)V
    .locals 2

    .prologue
    .line 43
    check-cast p1, Lcom/google/android/exoplayer2/f/c;

    .line 27240
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 43
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/o;)V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method

.method public final varargs declared-synchronized a([Lcom/google/android/exoplayer2/e$c;)V
    .locals 3

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->b:Z

    if-eqz v0, :cond_1

    .line 195
    const-string/jumbo v0, "ExoPlayerImplInternal"

    const-string/jumbo v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/g;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/g;->c:I

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 200
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/g;->v:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v0, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 14

    .prologue
    .line 255
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 301
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    .line 257
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/f/d;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2340
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->f()V

    .line 2341
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/i;->a()V

    .line 2342
    if-eqz v1, :cond_0

    .line 2343
    new-instance v1, Lcom/google/android/exoplayer2/g$b;

    const/4 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 2345
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->p:Lcom/google/android/exoplayer2/f/d;

    .line 2346
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/f/d;->a(Lcom/google/android/exoplayer2/f/d$a;)V

    .line 2347
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 2348
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    const/4 v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 261
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2352
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 2353
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->r:Z

    .line 2354
    if-nez v0, :cond_4

    .line 2355
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->c()V

    .line 2356
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 262
    :cond_2
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 261
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 2358
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2359
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->b()V

    .line 2360
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Renderer error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->e()V

    .line 307
    const/4 v0, 0x1

    goto :goto_0

    .line 2361
    :cond_5
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2362
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lcom/google/android/exoplayer2/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 308
    :catch_1
    move-exception v0

    .line 309
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Source error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/d;->a(Ljava/io/IOException;)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->e()V

    .line 312
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2412
    :pswitch_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 2934
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    if-eqz v0, :cond_17

    .line 2940
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 2941
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->g:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/android/exoplayer2/g;->A:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_9

    .line 2944
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget v0, v0, Lcom/google/android/exoplayer2/g$b;->a:I

    .line 2946
    :goto_4
    if-gtz v0, :cond_9

    .line 2950
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 3136
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v1

    .line 2950
    iget v12, v1, Lcom/google/android/exoplayer2/o$a;->c:I

    .line 2951
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    .line 4108
    invoke-virtual {v1, v12, v2}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    .line 2952
    iget v1, v1, Lcom/google/android/exoplayer2/o$b;->f:I

    if-ne v0, v1, :cond_d

    const/4 v1, 0x1

    .line 2953
    :goto_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-nez v2, :cond_e

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/g$b;->c:J

    .line 2955
    :goto_6
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v8, v2

    if-nez v1, :cond_7

    .line 2958
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->b(I)Landroid/util/Pair;

    move-result-object v2

    .line 2959
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2960
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move v0, v1

    .line 2962
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v1

    iget-object v7, v1, Lcom/google/android/exoplayer2/o$a;->b:Ljava/lang/Object;

    .line 2963
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->p:Lcom/google/android/exoplayer2/f/d;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    .line 2964
    invoke-interface {v2}, Lcom/google/android/exoplayer2/i;->d()Lcom/google/android/exoplayer2/i/b;

    move-result-object v2

    .line 2963
    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/f/d;->a(ILcom/google/android/exoplayer2/i/b;)Lcom/google/android/exoplayer2/f/c;

    move-result-object v6

    .line 2965
    invoke-interface {v6, p0}, Lcom/google/android/exoplayer2/f/c;->a(Lcom/google/android/exoplayer2/f/c$a;)V

    .line 2966
    new-instance v1, Lcom/google/android/exoplayer2/g$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->e:[Lcom/google/android/exoplayer2/m;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->f:Lcom/google/android/exoplayer2/h/h;

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->p:Lcom/google/android/exoplayer2/f/d;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/g$a;-><init>([Lcom/google/android/exoplayer2/l;[Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/h/h;Lcom/google/android/exoplayer2/f/d;Lcom/google/android/exoplayer2/f/c;Ljava/lang/Object;J)V

    .line 2969
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    .line 5108
    invoke-virtual {v2, v12, v3}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;

    .line 2970
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/g$a;->a(Lcom/google/android/exoplayer2/o$b;I)V

    .line 2971
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_8

    .line 2972
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 5226
    iput-object v1, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 2973
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/g$a;->j:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v4, v4, Lcom/google/android/exoplayer2/g$a;->e:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 6136
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v0

    .line 6333
    iget-wide v4, v0, Lcom/google/android/exoplayer2/o$a;->d:J

    .line 2974
    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/android/exoplayer2/g$a;->j:J

    .line 2976
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/g;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/g;->A:I

    .line 2977
    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 2978
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(Z)V

    .line 2982
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2983
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(Z)V

    .line 2988
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_17

    .line 2994
    :goto_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/exoplayer2/g;->x:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$a;->j:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    .line 2998
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->c()V

    .line 2999
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/g$a;)V

    .line 3000
    iget v0, p0, Lcom/google/android/exoplayer2/g;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/g;->A:I

    .line 3001
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v1, v1, Lcom/google/android/exoplayer2/g$a;->e:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$a;->f:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 3003
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 3004
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/d; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    .line 313
    :catch_2
    move-exception v0

    .line 314
    const-string/jumbo v1, "ExoPlayerImplInternal"

    const-string/jumbo v2, "Internal runtime error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-static {v0}, Lcom/google/android/exoplayer2/d;->a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/d;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 317
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->e()V

    .line 318
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2944
    :cond_c
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v0, v0, Lcom/google/android/exoplayer2/g$a;->e:I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 2952
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 2953
    :cond_e
    if-eqz v1, :cond_f

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_6

    :cond_f
    const-wide/16 v8, 0x0

    goto/16 :goto_6

    .line 2984
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->l:Z

    if-eqz v0, :cond_b

    .line 2985
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->h()V

    goto/16 :goto_7

    .line 3006
    :cond_11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->i()V

    .line 3008
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->g:Z

    if-eqz v0, :cond_12

    .line 3010
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_17

    aget-object v3, v1, v0

    .line 3011
    invoke-interface {v3}, Lcom/google/android/exoplayer2/l;->h()V

    .line 3010
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 3016
    :cond_12
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_13

    aget-object v3, v1, v0

    .line 3017
    invoke-interface {v3}, Lcom/google/android/exoplayer2/l;->g()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3016
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3021
    :cond_13
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-eqz v0, :cond_17

    .line 3022
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 7186
    iget-object v2, v0, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/h/g;

    .line 3023
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 3024
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 8186
    iget-object v3, v0, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/h/g;

    .line 3025
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    array-length v0, v0

    if-ge v1, v0, :cond_17

    .line 3026
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    aget-object v4, v0, v1

    .line 9056
    iget-object v0, v2, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    aget-object v0, v0, v1

    .line 10056
    iget-object v5, v3, Lcom/google/android/exoplayer2/h/g;->c:[Lcom/google/android/exoplayer2/h/f;

    aget-object v5, v5, v1

    .line 3029
    if-eqz v0, :cond_15

    .line 3030
    if-eqz v5, :cond_16

    .line 3033
    invoke-interface {v5}, Lcom/google/android/exoplayer2/h/f;->b()I

    move-result v0

    new-array v6, v0, [Lcom/google/android/exoplayer2/Format;

    .line 3034
    const/4 v0, 0x0

    :goto_c
    array-length v7, v6

    if-ge v0, v7, :cond_14

    .line 3035
    invoke-interface {v5, v0}, Lcom/google/android/exoplayer2/h/f;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    aput-object v7, v6, v0

    .line 3034
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3037
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/f/e;

    aget-object v0, v0, v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-wide v8, v5, Lcom/google/android/exoplayer2/g$a;->j:J

    invoke-interface {v4, v6, v0, v8, v9}, Lcom/google/android/exoplayer2/l;->a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/f/e;J)V

    .line 3025
    :cond_15
    :goto_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 3042
    :cond_16
    invoke-interface {v4}, Lcom/google/android/exoplayer2/l;->h()V

    goto :goto_d

    .line 2415
    :cond_17
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_18

    .line 2417
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->g()V

    .line 2418
    const-wide/16 v0, 0xa

    invoke-direct {p0, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/g;->a(JJ)V

    .line 266
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2422
    :cond_18
    const-string/jumbo v0, "doSomeWork"

    invoke-static {v0}, Lcom/google/android/exoplayer2/j/q;->a(Ljava/lang/String;)V

    .line 2424
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 2425
    const/4 v2, 0x1

    .line 2426
    const/4 v1, 0x1

    .line 2427
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v1

    move v1, v2

    move v2, v0

    :goto_f
    if-ge v2, v5, :cond_1e

    aget-object v6, v4, v2

    .line 2431
    iget-wide v8, p0, Lcom/google/android/exoplayer2/g;->x:J

    iget-wide v12, p0, Lcom/google/android/exoplayer2/g;->w:J

    invoke-interface {v6, v8, v9, v12, v13}, Lcom/google/android/exoplayer2/l;->a(JJ)V

    .line 2432
    if-eqz v1, :cond_1b

    invoke-interface {v6}, Lcom/google/android/exoplayer2/l;->q()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    move v1, v0

    .line 2435
    :goto_10
    invoke-interface {v6}, Lcom/google/android/exoplayer2/l;->p()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-interface {v6}, Lcom/google/android/exoplayer2/l;->q()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_19
    const/4 v0, 0x1

    .line 2436
    :goto_11
    if-nez v0, :cond_1a

    .line 2437
    invoke-interface {v6}, Lcom/google/android/exoplayer2/l;->i()V

    .line 2439
    :cond_1a
    if-eqz v3, :cond_1d

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    .line 2427
    :goto_12
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_f

    .line 2432
    :cond_1b
    const/4 v0, 0x0

    move v1, v0

    goto :goto_10

    .line 2435
    :cond_1c
    const/4 v0, 0x0

    goto :goto_11

    .line 2439
    :cond_1d
    const/4 v0, 0x0

    goto :goto_12

    .line 2442
    :cond_1e
    if-nez v3, :cond_1f

    .line 2443
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->g()V

    .line 2446
    :cond_1f
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v2, v2, Lcom/google/android/exoplayer2/g$a;->e:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 10136
    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v0

    .line 10333
    iget-wide v4, v0, Lcom/google/android/exoplayer2/o$a;->d:J

    .line 2448
    if-eqz v1, :cond_22

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/g$b;->c:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_22

    :cond_20
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->z:Z

    if-eqz v0, :cond_22

    .line 2452
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 2453
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->c()V

    .line 2469
    :cond_21
    :goto_13
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 2470
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_2a

    aget-object v3, v1, v0

    .line 2471
    invoke-interface {v3}, Lcom/google/android/exoplayer2/l;->i()V

    .line 2470
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2454
    :cond_22
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 2455
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v0, v0

    if-lez v0, :cond_27

    if-eqz v3, :cond_21

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 10770
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_23

    .line 10771
    const/4 v0, 0x0

    .line 2456
    :goto_15
    if-eqz v0, :cond_21

    .line 2457
    :goto_16
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 2458
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->r:Z

    if-eqz v0, :cond_21

    .line 2459
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->b()V

    goto :goto_13

    .line 10773
    :cond_23
    iget-wide v0, p0, Lcom/google/android/exoplayer2/g;->x:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/g$a;->j:J

    sub-long v4, v0, v4

    .line 10775
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-nez v0, :cond_24

    const-wide/16 v0, 0x0

    .line 10777
    :goto_17
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v0, v6

    if-nez v3, :cond_26

    .line 10778
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/g$a;->g:Z

    if-eqz v0, :cond_25

    .line 10779
    const/4 v0, 0x1

    goto :goto_15

    .line 10775
    :cond_24
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/f/c;

    .line 10776
    invoke-interface {v0}, Lcom/google/android/exoplayer2/f/c;->h()J

    move-result-wide v0

    goto :goto_17

    .line 10781
    :cond_25
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v1, v1, Lcom/google/android/exoplayer2/g$a;->e:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 11136
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v3, v6}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v0

    .line 11333
    iget-wide v0, v0, Lcom/google/android/exoplayer2/o$a;->d:J

    .line 10784
    :cond_26
    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    sub-long/2addr v0, v4

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/exoplayer2/i;->a(JZ)Z

    move-result v0

    goto :goto_15

    .line 2456
    :cond_27
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->y:Z

    if-eqz v0, :cond_21

    goto :goto_16

    .line 2462
    :cond_28
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v0, v0

    if-lez v0, :cond_29

    if-nez v3, :cond_21

    .line 2464
    :goto_18
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->r:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->s:Z

    .line 2465
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 2466
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->c()V

    goto/16 :goto_13

    .line 2462
    :cond_29
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->y:Z

    if-nez v0, :cond_21

    goto :goto_18

    .line 2475
    :cond_2a
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/g;->r:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    :cond_2b
    iget v0, p0, Lcom/google/android/exoplayer2/g;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 2476
    :cond_2c
    const-wide/16 v0, 0xa

    invoke-direct {p0, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/g;->a(JJ)V

    .line 2483
    :goto_19
    invoke-static {}, Lcom/google/android/exoplayer2/j/q;->a()V

    goto/16 :goto_e

    .line 2477
    :cond_2d
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->q:[Lcom/google/android/exoplayer2/l;

    array-length v0, v0

    if-eqz v0, :cond_2e

    .line 2478
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/g;->a(JJ)V

    goto :goto_19

    .line 2480
    :cond_2e
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_19

    .line 269
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Lcom/google/android/exoplayer2/d; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v2

    .line 11499
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_2f

    :try_start_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    if-eqz v0, :cond_2f

    .line 11500
    if-gtz v1, :cond_2f

    .line 11502
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/g;->b(I)Landroid/util/Pair;

    move-result-object v4

    .line 11503
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11504
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 11507
    :cond_2f
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget v0, v0, Lcom/google/android/exoplayer2/g$b;->a:I

    if-ne v1, v0, :cond_32

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/g$b;->c:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_31

    :cond_30
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/g$b;->c:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v0, v4, v6

    if-nez v0, :cond_32

    .line 11515
    :cond_31
    :try_start_5
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 11516
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Lcom/google/android/exoplayer2/d; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 270
    :goto_1a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 11513
    :cond_32
    :try_start_6
    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/g;->b(IJ)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v2

    .line 11515
    :try_start_7
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 11516
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1a

    .line 11515
    :catchall_0
    move-exception v0

    new-instance v4, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 11516
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0

    .line 273
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->e()V

    .line 274
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 11613
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->f()V

    .line 11614
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/i;->c()V

    .line 11615
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->a(I)V

    .line 11616
    monitor-enter p0
    :try_end_7
    .catch Lcom/google/android/exoplayer2/d; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 11617
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/g;->b:Z

    .line 11618
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 11619
    monitor-exit p0

    .line 278
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 11619
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0

    .line 281
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/f/c;

    .line 12050
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/f/c;

    if-eq v1, v0, :cond_34

    .line 282
    :cond_33
    :goto_1b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 12054
    :cond_34
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/g$a;->f:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    .line 12241
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/g$a;->h:Z

    .line 12242
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->b()Z

    .line 12243
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/g$a;->a(JLcom/google/android/exoplayer2/i;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/g$a;->f:J

    .line 12055
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-nez v0, :cond_36

    .line 12057
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 12058
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/g;->b(Lcom/google/android/exoplayer2/g$a;)V

    .line 12059
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/g$b;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    .line 12061
    new-instance v0, Lcom/google/android/exoplayer2/g$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v1, v1, Lcom/google/android/exoplayer2/g$a;->e:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$a;->f:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 12063
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/g$b;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/g;->a(J)V

    .line 12064
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 12065
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12067
    :cond_35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->i()V

    .line 12069
    :cond_36
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->h()V

    goto :goto_1b

    .line 285
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 12802
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 12803
    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    .line 12804
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/o;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    .line 12807
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_3d

    .line 12808
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o;->a(Ljava/lang/Object;)I

    move-result v2

    .line 12809
    const/4 v0, -0x1

    if-ne v2, v0, :cond_38

    .line 12810
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v1, v1, Lcom/google/android/exoplayer2/g$a;->e:I

    invoke-direct {p0, v0, v4, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/o;I)V

    .line 286
    :cond_37
    :goto_1c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 12816
    :cond_38
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    .line 12817
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    iget v3, v3, Lcom/google/android/exoplayer2/o$a;->c:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    .line 13108
    invoke-virtual {v1, v3, v5}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    .line 12817
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/g$a;->a(Lcom/google/android/exoplayer2/o$b;I)V

    .line 12820
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 12821
    const/4 v0, 0x0

    .line 12822
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/exoplayer2/g;->A:I

    move v3, v2

    .line 12823
    :goto_1d
    iget-object v2, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    if-eqz v2, :cond_3a

    .line 12824
    iget-object v2, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 12825
    add-int/lit8 v3, v3, 0x1

    .line 12826
    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    .line 12827
    iget-object v5, v2, Lcom/google/android/exoplayer2/g$a;->b:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    iget-object v6, v6, Lcom/google/android/exoplayer2/o$a;->b:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 12828
    if-nez v0, :cond_39

    .line 12831
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v0, v0, Lcom/google/android/exoplayer2/g$a;->e:I

    .line 12832
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    invoke-static {v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/g$a;)V

    .line 12833
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 12834
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 12835
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 12836
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/g$b;->c:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/g;->b(IJ)J

    move-result-wide v2

    .line 12837
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/g$b;->c:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_37

    .line 12838
    new-instance v1, Lcom/google/android/exoplayer2/g$b;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 12839
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1c

    .line 12845
    :cond_39
    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 12846
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 12849
    invoke-static {v2}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/g$a;)V

    .line 12875
    :cond_3a
    :goto_1e
    if-eqz v4, :cond_37

    .line 12876
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget v0, v0, Lcom/google/android/exoplayer2/g$a;->e:I

    .line 12878
    :goto_1f
    const/4 v1, -0x1

    if-eq v0, v1, :cond_37

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget v1, v1, Lcom/google/android/exoplayer2/g$b;->a:I

    if-eq v0, v1, :cond_37

    .line 12880
    new-instance v1, Lcom/google/android/exoplayer2/g$b;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$b;->c:J

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/g$b;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    .line 12881
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 12882
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->j:Landroid/os/Handler;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1c

    .line 12853
    :cond_3b
    iget v1, p0, Lcom/google/android/exoplayer2/g;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/g;->A:I

    .line 12854
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 13136
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v5, v6}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v1

    .line 12854
    iget v1, v1, Lcom/google/android/exoplayer2/o$a;->c:I

    .line 12855
    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v6, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    .line 14108
    invoke-virtual {v5, v1, v6}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    .line 12855
    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/g$a;->a(Lcom/google/android/exoplayer2/o$b;I)V

    .line 12856
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-ne v2, v1, :cond_3c

    .line 12857
    const/4 v0, 0x1

    :cond_3c
    move-object v1, v2

    .line 12860
    goto/16 :goto_1d

    .line 12861
    :cond_3d
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_3a

    .line 12862
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->b:Ljava/lang/Object;

    .line 12863
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/o;->a(Ljava/lang/Object;)I

    move-result v0

    .line 12864
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3e

    .line 12865
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v1, v1, Lcom/google/android/exoplayer2/g$a;->e:I

    invoke-direct {p0, v0, v4, v1}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/o;I)V

    goto/16 :goto_1c

    .line 12868
    :cond_3e
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->l:Lcom/google/android/exoplayer2/o$a;

    .line 14136
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$a;Z)Lcom/google/android/exoplayer2/o$a;

    move-result-object v1

    .line 12868
    iget v1, v1, Lcom/google/android/exoplayer2/o$a;->c:I

    .line 12869
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->E:Lcom/google/android/exoplayer2/o;

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->k:Lcom/google/android/exoplayer2/o$b;

    .line 15108
    invoke-virtual {v3, v1, v5}, Lcom/google/android/exoplayer2/o;->a(ILcom/google/android/exoplayer2/o$b;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    .line 12869
    invoke-virtual {v2, v1, v0}, Lcom/google/android/exoplayer2/g$a;->a(Lcom/google/android/exoplayer2/o$b;I)V

    goto/16 :goto_1e

    .line 12876
    :cond_3f
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget v0, v0, Lcom/google/android/exoplayer2/g$a;->e:I

    goto/16 :goto_1f

    :cond_40
    const/4 v0, -0x1

    goto/16 :goto_1f

    .line 289
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/f/c;

    .line 16073
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->a:Lcom/google/android/exoplayer2/f/c;

    if-eq v1, v0, :cond_42

    .line 290
    :cond_41
    :goto_20
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 16076
    :cond_42
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->h()V

    goto :goto_20

    .line 16678
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eqz v0, :cond_43

    .line 16683
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 16684
    const/4 v0, 0x1

    .line 16686
    :goto_21
    if-eqz v1, :cond_43

    iget-boolean v2, v1, Lcom/google/android/exoplayer2/g$a;->h:Z

    if-nez v2, :cond_44

    .line 294
    :cond_43
    :goto_22
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 16690
    :cond_44
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/g$a;->b()Z

    move-result v2

    if-nez v2, :cond_46

    .line 16694
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    if-ne v1, v2, :cond_45

    .line 16696
    const/4 v0, 0x0

    .line 16698
    :cond_45
    iget-object v1, v1, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    goto :goto_21

    .line 16701
    :cond_46
    if-eqz v0, :cond_4f

    .line 16703
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    if-eq v0, v1, :cond_4b

    const/4 v5, 0x1

    .line 16704
    :goto_23
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/g$a;)V

    .line 16705
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 16706
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->C:Lcom/google/android/exoplayer2/g$a;

    .line 16707
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 16708
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/g;->A:I

    .line 16710
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    array-length v0, v0

    new-array v6, v0, [Z

    .line 16711
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/g$b;->c:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/g$a;->a(JLcom/google/android/exoplayer2/i;Z[Z)J

    move-result-wide v0

    .line 16713
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/g$b;->c:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_47

    .line 16714
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iput-wide v0, v2, Lcom/google/android/exoplayer2/g$b;->c:J

    .line 16715
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/g;->a(J)V

    .line 16718
    :cond_47
    const/4 v0, 0x0

    .line 16719
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    array-length v1, v1

    new-array v3, v1, [Z

    .line 16720
    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_24
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    array-length v0, v0

    if-ge v2, v0, :cond_4e

    .line 16721
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->d:[Lcom/google/android/exoplayer2/l;

    aget-object v4, v0, v2

    .line 16722
    invoke-interface {v4}, Lcom/google/android/exoplayer2/l;->d()I

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    :goto_25
    aput-boolean v0, v3, v2

    .line 16723
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->c:[Lcom/google/android/exoplayer2/f/e;

    aget-object v5, v0, v2

    .line 16724
    if-eqz v5, :cond_53

    .line 16725
    add-int/lit8 v0, v1, 0x1

    .line 16727
    :goto_26
    aget-boolean v1, v3, v2

    if-eqz v1, :cond_4a

    .line 16728
    invoke-interface {v4}, Lcom/google/android/exoplayer2/l;->f()Lcom/google/android/exoplayer2/f/e;

    move-result-object v1

    if-eq v5, v1, :cond_4d

    .line 16730
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/l;

    if-ne v4, v1, :cond_49

    .line 16732
    if-nez v5, :cond_48

    .line 16735
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->h:Lcom/google/android/exoplayer2/j/p;

    iget-object v5, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/j/g;

    invoke-interface {v5}, Lcom/google/android/exoplayer2/j/g;->r()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/google/android/exoplayer2/j/p;->a(J)V

    .line 16737
    :cond_48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->o:Lcom/google/android/exoplayer2/j/g;

    .line 16738
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->n:Lcom/google/android/exoplayer2/l;

    .line 16740
    :cond_49
    invoke-static {v4}, Lcom/google/android/exoplayer2/g;->a(Lcom/google/android/exoplayer2/l;)V

    .line 16741
    invoke-interface {v4}, Lcom/google/android/exoplayer2/l;->k()V

    .line 16720
    :cond_4a
    :goto_27
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_24

    .line 16703
    :cond_4b
    const/4 v5, 0x0

    goto/16 :goto_23

    .line 16722
    :cond_4c
    const/4 v0, 0x0

    goto :goto_25

    .line 16742
    :cond_4d
    aget-boolean v1, v6, v2

    if-eqz v1, :cond_4a

    .line 16744
    iget-object v1, p0, Lcom/google/android/exoplayer2/g;->m:Lcom/google/android/exoplayer2/g$b;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/g$b;->c:J

    invoke-interface {v4, v8, v9}, Lcom/google/android/exoplayer2/l;->a(J)V

    goto :goto_27

    .line 16748
    :cond_4e
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->f:Lcom/google/android/exoplayer2/h/h;

    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->B:Lcom/google/android/exoplayer2/g$a;

    .line 17186
    iget-object v2, v2, Lcom/google/android/exoplayer2/g$a;->m:Lcom/google/android/exoplayer2/h/g;

    .line 16748
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/h/h;->a(Lcom/google/android/exoplayer2/h/g;)V

    .line 16749
    invoke-direct {p0, v3, v1}, Lcom/google/android/exoplayer2/g;->a([ZI)V

    .line 16764
    :goto_28
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->h()V

    .line 16765
    invoke-direct {p0}, Lcom/google/android/exoplayer2/g;->d()V

    .line 16766
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_22

    .line 16752
    :cond_4f
    iput-object v1, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    .line 16753
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 16754
    :goto_29
    if-eqz v0, :cond_50

    .line 16755
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/g$a;->c()V

    .line 16756
    iget-object v0, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 16757
    iget v1, p0, Lcom/google/android/exoplayer2/g;->A:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/g;->A:I

    goto :goto_29

    .line 16759
    :cond_50
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/exoplayer2/g$a;->k:Lcom/google/android/exoplayer2/g$a;

    .line 16760
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/g;->x:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/g$a;->j:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 16762
    iget-object v2, p0, Lcom/google/android/exoplayer2/g;->D:Lcom/google/android/exoplayer2/g$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/g;->g:Lcom/google/android/exoplayer2/i;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/g$a;->a(JLcom/google/android/exoplayer2/i;)J

    goto :goto_28

    .line 297
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/google/android/exoplayer2/e$c;

    check-cast v0, [Lcom/google/android/exoplayer2/e$c;
    :try_end_9
    .catch Lcom/google/android/exoplayer2/d; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 17656
    :try_start_a
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v2, :cond_51

    aget-object v3, v0, v1

    .line 17657
    iget-object v4, v3, Lcom/google/android/exoplayer2/e$c;->a:Lcom/google/android/exoplayer2/e$b;

    iget v5, v3, Lcom/google/android/exoplayer2/e$c;->b:I

    iget-object v3, v3, Lcom/google/android/exoplayer2/e$c;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/android/exoplayer2/e$b;->a(ILjava/lang/Object;)V

    .line 17656
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 17659
    :cond_51
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->p:Lcom/google/android/exoplayer2/f/d;

    if-eqz v0, :cond_52

    .line 17661
    iget-object v0, p0, Lcom/google/android/exoplayer2/g;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 17664
    :cond_52
    :try_start_b
    monitor-enter p0
    :try_end_b
    .catch Lcom/google/android/exoplayer2/d; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 17665
    :try_start_c
    iget v0, p0, Lcom/google/android/exoplayer2/g;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/g;->v:I

    .line 17666
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 17667
    monitor-exit p0

    .line 298
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 17667
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0

    .line 17664
    :catchall_3
    move-exception v0

    monitor-enter p0
    :try_end_d
    .catch Lcom/google/android/exoplayer2/d; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    .line 17665
    :try_start_e
    iget v1, p0, Lcom/google/android/exoplayer2/g;->v:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/g;->v:I

    .line 17666
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 17667
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catch Lcom/google/android/exoplayer2/d; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v0
    :try_end_11
    .catch Lcom/google/android/exoplayer2/d; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    :cond_53
    move v0, v1

    goto/16 :goto_26

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
