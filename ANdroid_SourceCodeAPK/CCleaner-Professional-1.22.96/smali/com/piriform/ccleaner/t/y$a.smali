.class final Lcom/piriform/ccleaner/t/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/t/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/UUID;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/piriform/ccleaner/t/y$a;->a:Ljava/util/UUID;

    .line 120
    iput-object p2, p0, Lcom/piriform/ccleaner/t/y$a;->b:Ljava/util/List;

    .line 121
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    if-ne p0, p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 137
    goto :goto_0

    .line 140
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/t/y$a;

    .line 142
    iget-object v2, p0, Lcom/piriform/ccleaner/t/y$a;->a:Ljava/util/UUID;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/piriform/ccleaner/t/y$a;->a:Ljava/util/UUID;

    iget-object v1, p1, Lcom/piriform/ccleaner/t/y$a;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/piriform/ccleaner/t/y$a;->a:Ljava/util/UUID;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/piriform/ccleaner/t/y$a;->b:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/piriform/ccleaner/t/y$a;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/piriform/ccleaner/t/y$a;->b:Ljava/util/List;

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/piriform/ccleaner/t/y$a;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/piriform/ccleaner/t/y$a;->a:Ljava/util/UUID;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/piriform/ccleaner/t/y$a;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 149
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/piriform/ccleaner/t/y$a;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/piriform/ccleaner/t/y$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 150
    return v0

    :cond_1
    move v0, v1

    .line 148
    goto :goto_0
.end method
