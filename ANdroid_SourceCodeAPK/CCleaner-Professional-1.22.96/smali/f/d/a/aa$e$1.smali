.class final Lf/d/a/aa$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/d/a/aa$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/d/a/aa$e;


# direct methods
.method constructor <init>(Lf/d/a/aa$e;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lf/d/a/aa$e$1;->a:Lf/d/a/aa$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 368
    iget-object v0, p0, Lf/d/a/aa$e$1;->a:Lf/d/a/aa$e;

    iget-boolean v0, v0, Lf/d/a/aa$e;->g:Z

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lf/d/a/aa$e$1;->a:Lf/d/a/aa$e;

    iget-object v1, v0, Lf/d/a/aa$e;->h:Lf/d/e/g;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lf/d/a/aa$e$1;->a:Lf/d/a/aa$e;

    iget-boolean v0, v0, Lf/d/a/aa$e;->g:Z

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lf/d/a/aa$e$1;->a:Lf/d/a/aa$e;

    iget-object v2, v0, Lf/d/a/aa$e;->h:Lf/d/e/g;

    .line 1161
    const/4 v0, 0x0

    iput v0, v2, Lf/d/e/g;->c:I

    .line 1162
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, v2, Lf/d/e/g;->e:[Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lf/d/a/aa$e$1;->a:Lf/d/a/aa$e;

    iget-wide v2, v0, Lf/d/a/aa$e;->j:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lf/d/a/aa$e;->j:J

    .line 373
    iget-object v0, p0, Lf/d/a/aa$e$1;->a:Lf/d/a/aa$e;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lf/d/a/aa$e;->g:Z

    .line 375
    :cond_0
    monitor-exit v1

    .line 382
    :cond_1
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
