.class final Lf/d/a/n$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lf/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lf/f;"
    }
.end annotation


# instance fields
.field private final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lf/i;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 75
    iput-object p1, p0, Lf/d/a/n$a;->a:Lf/i;

    .line 76
    iput-object p2, p0, Lf/d/a/n$a;->b:Ljava/util/Iterator;

    .line 77
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lf/d/a/n$a;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 5136
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    cmp-long v0, p1, v4

    if-nez v0, :cond_3

    invoke-virtual {p0, v2, v3, v4, v5}, Lf/d/a/n$a;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1156
    iget-object v0, p0, Lf/d/a/n$a;->a:Lf/i;

    .line 1157
    iget-object v1, p0, Lf/d/a/n$a;->b:Ljava/util/Iterator;

    .line 2108
    :cond_2
    iget-object v2, v0, Lf/i;->b:Lf/d/e/l;

    .line 3059
    iget-boolean v2, v2, Lf/d/e/l;->b:Z

    .line 1160
    if-nez v2, :cond_0

    .line 1167
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1173
    invoke-virtual {v0, v2}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 3108
    iget-object v2, v0, Lf/i;->b:Lf/d/e/l;

    .line 4059
    iget-boolean v2, v2, Lf/d/e/l;->b:Z

    .line 1175
    if-nez v2, :cond_0

    .line 1182
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1188
    if-nez v2, :cond_2

    .line 4108
    iget-object v1, v0, Lf/i;->b:Lf/d/e/l;

    .line 5059
    iget-boolean v1, v1, Lf/d/e/l;->b:Z

    .line 1189
    if-nez v1, :cond_0

    .line 1190
    invoke-virtual {v0}, Lf/i;->onCompleted()V

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v1

    invoke-static {v1, v0}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;)V

    goto :goto_0

    .line 1184
    :catch_1
    move-exception v1

    invoke-static {v1, v0}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;)V

    goto :goto_0

    .line 88
    :cond_3
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Lf/d/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 5096
    iget-object v4, p0, Lf/d/a/n$a;->a:Lf/i;

    .line 5097
    iget-object v5, p0, Lf/d/a/n$a;->b:Ljava/util/Iterator;

    move-wide v0, v2

    .line 5103
    :cond_4
    :goto_1
    cmp-long v6, v0, p1

    if-eqz v6, :cond_6

    .line 6108
    iget-object v6, v4, Lf/i;->b:Lf/d/e/l;

    .line 7059
    iget-boolean v6, v6, Lf/d/e/l;->b:Z

    .line 5104
    if-nez v6, :cond_0

    .line 5111
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 5117
    invoke-virtual {v4, v6}, Lf/i;->onNext(Ljava/lang/Object;)V

    .line 7108
    iget-object v6, v4, Lf/i;->b:Lf/d/e/l;

    .line 8059
    iget-boolean v6, v6, Lf/d/e/l;->b:Z

    .line 5119
    if-nez v6, :cond_0

    .line 5126
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    .line 5132
    if-nez v6, :cond_5

    .line 8108
    iget-object v0, v4, Lf/i;->b:Lf/d/e/l;

    .line 9059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 5133
    if-nez v0, :cond_0

    .line 5134
    invoke-virtual {v4}, Lf/i;->onCompleted()V

    goto :goto_0

    .line 5113
    :catch_2
    move-exception v0

    invoke-static {v0, v4}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;)V

    goto :goto_0

    .line 5128
    :catch_3
    move-exception v0

    invoke-static {v0, v4}, Lf/b/b;->a(Ljava/lang/Throwable;Lf/e;)V

    goto :goto_0

    .line 5139
    :cond_5
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 5140
    goto :goto_1

    .line 5142
    :cond_6
    invoke-virtual {p0}, Lf/d/a/n$a;->get()J

    move-result-wide p1

    .line 5143
    cmp-long v6, v0, p1

    if-nez v6, :cond_4

    .line 5144
    invoke-static {p0, v0, v1}, Lf/d/a/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide p1

    .line 5145
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    move-wide v0, v2

    .line 5148
    goto :goto_1
.end method
