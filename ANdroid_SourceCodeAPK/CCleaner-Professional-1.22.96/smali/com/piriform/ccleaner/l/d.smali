.class public final Lcom/piriform/ccleaner/l/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/piriform/ccleaner/scheduler/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/piriform/ccleaner/scheduler/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/l/d;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p1, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/piriform/ccleaner/scheduler/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    .line 45
    return-void
.end method

.method public static a()Lcom/piriform/ccleaner/l/d;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/piriform/ccleaner/l/d;

    const-class v1, Lcom/piriform/ccleaner/scheduler/b;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/l/d;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method

.method public static a(Lcom/piriform/ccleaner/l/d;)Lcom/piriform/ccleaner/l/d;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/piriform/ccleaner/l/d;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/l/d;-><init>(Lcom/piriform/ccleaner/l/d;)V

    return-object v0
.end method

.method public static b()Lcom/piriform/ccleaner/l/d;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/piriform/ccleaner/l/d;

    const-class v1, Lcom/piriform/ccleaner/scheduler/b;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/l/d;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/scheduler/b;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public final a(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/piriform/ccleaner/scheduler/b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .line 1060
    iget-object v0, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 56
    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 90
    goto :goto_0

    .line 93
    :cond_3
    check-cast p1, Lcom/piriform/ccleaner/l/d;

    .line 95
    iget-object v2, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/piriform/ccleaner/scheduler/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    .line 1076
    iget-object v0, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    .line 81
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WeekDaySelection{days="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/piriform/ccleaner/l/d;->a:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
