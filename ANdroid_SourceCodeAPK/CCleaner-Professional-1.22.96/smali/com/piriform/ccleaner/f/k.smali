.class public final Lcom/piriform/ccleaner/f/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/piriform/ccleaner/f/j;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/f/k;->a:Z

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/f/k;->b:Ljava/util/Locale;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/f/j;Lcom/piriform/ccleaner/f/j;)I
    .locals 3

    .prologue
    .line 17
    .line 1265
    iget-boolean v0, p1, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 2265
    iget-boolean v1, p2, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 1030
    if-eq v0, v1, :cond_1

    .line 1031
    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    :goto_1
    return v0

    .line 1031
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1034
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3209
    :cond_2
    iget-object v0, p1, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/piriform/ccleaner/f/k;->b:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 4209
    iget-object v1, p2, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/piriform/ccleaner/f/k;->b:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 24
    iget-boolean v2, p0, Lcom/piriform/ccleaner/f/k;->a:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lcom/piriform/ccleaner/f/j;

    check-cast p2, Lcom/piriform/ccleaner/f/j;

    invoke-virtual {p0, p1, p2}, Lcom/piriform/ccleaner/f/k;->a(Lcom/piriform/ccleaner/f/j;Lcom/piriform/ccleaner/f/j;)I

    move-result v0

    return v0
.end method
