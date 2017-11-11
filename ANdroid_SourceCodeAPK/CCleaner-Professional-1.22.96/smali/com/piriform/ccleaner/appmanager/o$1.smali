.class final Lcom/piriform/ccleaner/appmanager/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/appmanager/o;->a(Ljava/util/Comparator;)V
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
        "Lcom/piriform/ccleaner/core/data/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Lcom/piriform/ccleaner/appmanager/o;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/o;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/o$1;->b:Lcom/piriform/ccleaner/appmanager/o;

    iput-object p2, p0, Lcom/piriform/ccleaner/appmanager/o$1;->a:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 69
    check-cast p1, Lcom/piriform/ccleaner/core/data/b;

    check-cast p2, Lcom/piriform/ccleaner/core/data/b;

    .line 1072
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/o$1;->a:Ljava/util/Comparator;

    .line 2022
    iget-object v1, p1, Lcom/piriform/ccleaner/core/data/b;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 3022
    iget-object v2, p2, Lcom/piriform/ccleaner/core/data/b;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1072
    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 69
    return v0
.end method
