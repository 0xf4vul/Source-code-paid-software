.class public final Lcom/piriform/ccleaner/core/data/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/data/l;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/data/i$b;,
        Lcom/piriform/ccleaner/core/data/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/piriform/ccleaner/core/data/l",
        "<",
        "Lcom/piriform/ccleaner/core/data/j;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/piriform/ccleaner/core/data/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/piriform/ccleaner/core/data/j;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:J

.field public final e:Landroid/content/pm/ApplicationInfo;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/data/j;Ljava/lang/String;Ljava/lang/String;JLandroid/content/pm/ApplicationInfo;Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/core/data/i;->a:Lcom/piriform/ccleaner/core/data/j;

    .line 48
    iput-object p2, p0, Lcom/piriform/ccleaner/core/data/i;->b:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/piriform/ccleaner/core/data/i;->c:Ljava/lang/String;

    .line 50
    iput-wide p4, p0, Lcom/piriform/ccleaner/core/data/i;->d:J

    .line 51
    iput-object p6, p0, Lcom/piriform/ccleaner/core/data/i;->e:Landroid/content/pm/ApplicationInfo;

    .line 52
    iput-boolean p7, p0, Lcom/piriform/ccleaner/core/data/i;->f:Z

    .line 53
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 11
    check-cast p1, Lcom/piriform/ccleaner/core/data/i;

    .line 1100
    iget-wide v0, p0, Lcom/piriform/ccleaner/core/data/i;->d:J

    iget-wide v2, p1, Lcom/piriform/ccleaner/core/data/i;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1101
    const/4 v0, -0x1

    .line 1104
    :goto_0
    return v0

    .line 1103
    :cond_0
    iget-wide v0, p0, Lcom/piriform/ccleaner/core/data/i;->d:J

    iget-wide v2, p1, Lcom/piriform/ccleaner/core/data/i;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1104
    const/4 v0, 0x0

    goto :goto_0

    .line 1106
    :cond_1
    const/4 v0, 0x1

    .line 11
    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 90
    instance-of v0, p1, Lcom/piriform/ccleaner/core/data/i;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/piriform/ccleaner/core/data/i;->d:J

    check-cast p1, Lcom/piriform/ccleaner/core/data/i;

    iget-wide v2, p1, Lcom/piriform/ccleaner/core/data/i;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/piriform/ccleaner/core/data/i;->d:J

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ProcessInfo:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/core/data/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nDisplay name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/piriform/ccleaner/core/data/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    iget-wide v2, p0, Lcom/piriform/ccleaner/core/data/i;->d:J

    invoke-static {v2, v3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
