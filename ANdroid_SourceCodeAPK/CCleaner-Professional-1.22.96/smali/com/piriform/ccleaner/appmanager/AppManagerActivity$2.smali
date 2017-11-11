.class final Lcom/piriform/ccleaner/appmanager/AppManagerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/AppManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/e",
        "<",
        "Lcom/piriform/ccleaner/core/data/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$2;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$2;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    sget v1, Lcom/piriform/ccleaner/d;->a:I

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->b(I)V

    .line 98
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$2;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    sget v1, Lcom/piriform/ccleaner/d;->a:I

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->b(I)V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onError getting packages"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/novoda/notils/c/a/a;->b(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$2;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->n:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v1, "onError getting packages"

    invoke-interface {v0, v1, p1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 89
    check-cast p1, Lcom/piriform/ccleaner/core/data/b;

    .line 1092
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$2;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    .line 1211
    iget-object v4, v0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->q:Lcom/piriform/ccleaner/appmanager/d;

    move v1, v2

    .line 2033
    :goto_0
    iget-object v0, v4, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 2034
    invoke-static {v1}, Lcom/piriform/ccleaner/appmanager/f;->a(I)Lcom/piriform/ccleaner/appmanager/f;

    move-result-object v0

    .line 3022
    iget-object v3, p1, Lcom/piriform/ccleaner/core/data/b;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 2035
    invoke-virtual {v0, v3}, Lcom/piriform/ccleaner/appmanager/f;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2036
    iget-object v0, v4, Lcom/piriform/ccleaner/appmanager/d;->a:[Lcom/piriform/ccleaner/appmanager/o;

    aget-object v5, v0, v1

    move v3, v2

    .line 3136
    :goto_1
    iget-object v0, v5, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 3137
    iget-object v0, v5, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/b;

    .line 3138
    iget-object v6, v5, Lcom/piriform/ccleaner/appmanager/o;->e:Ljava/util/Comparator;

    invoke-interface {v6, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3136
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 3044
    :cond_0
    iget-object v0, v5, Lcom/piriform/ccleaner/appmanager/o;->b:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4022
    iget-object v0, p1, Lcom/piriform/ccleaner/core/data/b;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 3046
    iget-wide v6, v5, Lcom/piriform/ccleaner/appmanager/o;->a:J

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/piriform/ccleaner/appmanager/o;->a:J

    .line 2037
    iget-object v0, v4, Lcom/piriform/ccleaner/appmanager/d;->b:Lcom/piriform/ccleaner/appmanager/d$a;

    invoke-interface {v0, v1, v3}, Lcom/piriform/ccleaner/appmanager/d$a;->a(II)V

    .line 2033
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_2
    return-void
.end method
