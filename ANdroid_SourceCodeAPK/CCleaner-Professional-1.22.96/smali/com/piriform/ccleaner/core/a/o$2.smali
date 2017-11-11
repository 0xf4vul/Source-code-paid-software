.class final Lcom/piriform/ccleaner/core/a/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/core/a/o;->a(Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/piriform/ccleaner/core/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Lcom/piriform/ccleaner/core/a/o;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/core/a/o;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/piriform/ccleaner/core/a/o$2;->b:Lcom/piriform/ccleaner/core/a/o;

    iput-object p2, p0, Lcom/piriform/ccleaner/core/a/o$2;->a:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 95
    check-cast p1, Lcom/piriform/ccleaner/core/a/b;

    check-cast p2, Lcom/piriform/ccleaner/core/a/b;

    .line 2059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 1098
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 3059
    iget-object v1, p2, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 1099
    check-cast v1, Lcom/piriform/ccleaner/f/j;

    .line 1100
    iget-object v2, p0, Lcom/piriform/ccleaner/core/a/o$2;->a:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 95
    return v0
.end method
