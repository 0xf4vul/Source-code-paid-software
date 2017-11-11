.class public final Lcom/piriform/ccleaner/core/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/i$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/i;->f:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/core/i;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/core/i;->g:Ljava/util/List;

    .line 28
    sget v0, Lcom/piriform/ccleaner/core/i$a;->a:I

    iput v0, p0, Lcom/piriform/ccleaner/core/i;->h:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/i;->f:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/core/i;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/core/i;->g:Ljava/util/List;

    .line 32
    iput p1, p0, Lcom/piriform/ccleaner/core/i;->h:I

    .line 33
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/piriform/ccleaner/core/i;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/piriform/ccleaner/core/i;->b:J

    .line 49
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/piriform/ccleaner/core/i;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/piriform/ccleaner/core/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/piriform/ccleaner/core/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()J
    .locals 4

    .prologue
    .line 72
    sget-object v0, Lcom/piriform/ccleaner/core/h;->c:Lcom/piriform/ccleaner/core/h;

    .line 1076
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/i;->b:J

    .line 72
    sget-object v1, Lcom/piriform/ccleaner/core/h;->a:Lcom/piriform/ccleaner/core/h;

    invoke-virtual {v0, v2, v3, v1}, Lcom/piriform/ccleaner/core/h;->b(JLcom/piriform/ccleaner/core/h;)J

    move-result-wide v0

    return-wide v0
.end method
