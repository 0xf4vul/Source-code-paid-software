.class abstract Lf/d/a/l$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lf/a;
.implements Lf/f;
.implements Lf/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lf/a",
        "<TT;>;",
        "Lf/f;",
        "Lf/j;"
    }
.end annotation


# instance fields
.field final a:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:Lf/j/c;


# direct methods
.method public constructor <init>(Lf/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 118
    iput-object p1, p0, Lf/d/a/l$a;->a:Lf/i;

    .line 119
    new-instance v0, Lf/j/c;

    invoke-direct {v0}, Lf/j/c;-><init>()V

    iput-object v0, p0, Lf/d/a/l$a;->b:Lf/j/c;

    .line 120
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final a(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 163
    .line 4424
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 4425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "n >= 0 required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4427
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 163
    :goto_0
    if-eqz v0, :cond_1

    .line 164
    invoke-static {p0, p1, p2}, Lf/d/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 165
    invoke-virtual {p0}, Lf/d/a/l$a;->d()V

    .line 167
    :cond_1
    return-void

    .line 4427
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lf/d/a/l$a;->b:Lf/j/c;

    invoke-virtual {v0}, Lf/j/c;->b()V

    .line 149
    invoke-virtual {p0}, Lf/d/a/l$a;->a()V

    .line 150
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lf/d/a/l$a;->b:Lf/j/c;

    .line 4031
    iget-object v0, v0, Lf/j/c;->a:Lf/d/d/a;

    invoke-virtual {v0}, Lf/d/d/a;->c()Z

    move-result v0

    .line 158
    return v0
.end method

.method d()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lf/d/a/l$a;->a:Lf/i;

    .line 1108
    iget-object v0, v0, Lf/i;->b:Lf/d/e/l;

    .line 2059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 124
    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf/d/a/l$a;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v0, p0, Lf/d/a/l$a;->b:Lf/j/c;

    invoke-virtual {v0}, Lf/j/c;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/d/a/l$a;->b:Lf/j/c;

    invoke-virtual {v1}, Lf/j/c;->b()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lf/d/a/l$a;->a:Lf/i;

    .line 2108
    iget-object v0, v0, Lf/i;->b:Lf/d/e/l;

    .line 3059
    iget-boolean v0, v0, Lf/d/e/l;->b:Z

    .line 136
    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf/d/a/l$a;->a:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lf/d/a/l$a;->b:Lf/j/c;

    invoke-virtual {v0}, Lf/j/c;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lf/d/a/l$a;->b:Lf/j/c;

    invoke-virtual {v1}, Lf/j/c;->b()V

    throw v0
.end method
