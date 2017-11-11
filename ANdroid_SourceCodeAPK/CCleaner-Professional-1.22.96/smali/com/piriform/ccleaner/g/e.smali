.class public final Lcom/piriform/ccleaner/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/g/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/piriform/ccleaner/g/c",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/piriform/ccleaner/g/d;

.field private final b:Lcom/piriform/ccleaner/f/m;

.field private final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/piriform/ccleaner/g/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/piriform/ccleaner/g/d;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/m;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/g/e;->c:Ljava/util/Deque;

    .line 14
    invoke-static {}, Lcom/piriform/ccleaner/g/d;->a()Lcom/piriform/ccleaner/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    .line 18
    iput-object p1, p0, Lcom/piriform/ccleaner/g/e;->b:Lcom/piriform/ccleaner/f/m;

    .line 19
    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    .line 1038
    iget-object v0, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    iput-object v0, p0, Lcom/piriform/ccleaner/g/e;->a:Lcom/piriform/ccleaner/g/d;

    .line 1039
    iget-object v4, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    .line 2107
    iget-boolean v0, v4, Lcom/piriform/ccleaner/g/d;->c:Z

    .line 1128
    if-eqz v0, :cond_1

    .line 1129
    const-wide/16 v0, 0x0

    .line 1130
    iget-object v2, v4, Lcom/piriform/ccleaner/g/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/g/d;

    .line 1131
    iget-wide v0, v0, Lcom/piriform/ccleaner/g/d;->f:J

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 1132
    goto :goto_0

    .line 1133
    :cond_0
    iput-wide v2, v4, Lcom/piriform/ccleaner/g/d;->f:J

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/g/e;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/g/d;

    iput-object v0, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    .line 10
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    check-cast p1, Ljava/io/File;

    .line 4023
    iget-object v0, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/g/d;->a(Lcom/piriform/ccleaner/g/d;Ljava/io/File;)Lcom/piriform/ccleaner/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/g/e;->a:Lcom/piriform/ccleaner/g/d;

    .line 4024
    iget-object v0, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/g/e;->a:Lcom/piriform/ccleaner/g/d;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/g/d;->a(Lcom/piriform/ccleaner/g/d;)V

    .line 4026
    iget-object v0, p0, Lcom/piriform/ccleaner/g/e;->c:Ljava/util/Deque;

    iget-object v1, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 4027
    iget-object v0, p0, Lcom/piriform/ccleaner/g/e;->a:Lcom/piriform/ccleaner/g/d;

    iput-object v0, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    .line 10
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10
    check-cast p1, Ljava/io/File;

    .line 3032
    iget-object v0, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/g/e;->b:Lcom/piriform/ccleaner/f/m;

    invoke-interface {v1, p1}, Lcom/piriform/ccleaner/f/m;->f(Ljava/io/File;)J

    move-result-wide v2

    invoke-static {v0, p1, v2, v3}, Lcom/piriform/ccleaner/g/d;->a(Lcom/piriform/ccleaner/g/d;Ljava/io/File;J)Lcom/piriform/ccleaner/g/d;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/g/e;->a:Lcom/piriform/ccleaner/g/d;

    .line 3033
    iget-object v0, p0, Lcom/piriform/ccleaner/g/e;->d:Lcom/piriform/ccleaner/g/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/g/e;->a:Lcom/piriform/ccleaner/g/d;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/g/d;->a(Lcom/piriform/ccleaner/g/d;)V

    .line 10
    return-void
.end method
