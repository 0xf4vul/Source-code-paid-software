.class public final Lcom/piriform/ccleaner/j/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b",
        "<",
        "Lcom/google/gson/e;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/piriform/ccleaner/j/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/piriform/ccleaner/j/be;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/be;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/bb;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Lcom/piriform/ccleaner/j/be;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/be;->b:Lcom/piriform/ccleaner/j/bb;

    .line 18
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/bb;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/bb;",
            ")",
            "La/a/b",
            "<",
            "Lcom/google/gson/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/piriform/ccleaner/j/be;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/j/be;-><init>(Lcom/piriform/ccleaner/j/bb;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 12

    .prologue
    const/4 v5, 0x2

    .line 1070
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    const-class v1, Lcom/piriform/ccleaner/l/a;

    new-instance v2, Lcom/piriform/ccleaner/h/a;

    invoke-direct {v2}, Lcom/piriform/ccleaner/h/a;-><init>()V

    .line 1071
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/f;

    move-result-object v0

    const-class v1, Lcom/piriform/ccleaner/l/d;

    new-instance v2, Lcom/piriform/ccleaner/h/b;

    invoke-direct {v2}, Lcom/piriform/ccleaner/h/b;-><init>()V

    .line 1072
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/f;

    move-result-object v10

    .line 1539
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    iget-object v0, v10, Lcom/google/gson/f;->e:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1541
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1542
    iget-object v0, v10, Lcom/google/gson/f;->f:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1543
    iget-object v1, v10, Lcom/google/gson/f;->h:Ljava/lang/String;

    iget v2, v10, Lcom/google/gson/f;->i:I

    iget v3, v10, Lcom/google/gson/f;->j:I

    .line 1554
    if-eqz v1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1555
    new-instance v0, Lcom/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 1562
    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/google/gson/b/a;->a(Ljava/lang/Class;)Lcom/google/gson/b/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gson/TreeTypeAdapter;->a(Lcom/google/gson/b/a;Ljava/lang/Object;)Lcom/google/gson/w;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1563
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/google/gson/b/a;->a(Ljava/lang/Class;)Lcom/google/gson/b/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gson/TreeTypeAdapter;->a(Lcom/google/gson/b/a;Ljava/lang/Object;)Lcom/google/gson/w;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/google/gson/b/a;->a(Ljava/lang/Class;)Lcom/google/gson/b/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gson/TreeTypeAdapter;->a(Lcom/google/gson/b/a;Ljava/lang/Object;)Lcom/google/gson/w;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1545
    :cond_0
    new-instance v0, Lcom/google/gson/e;

    iget-object v1, v10, Lcom/google/gson/f;->a:Lcom/google/gson/internal/Excluder;

    iget-object v2, v10, Lcom/google/gson/f;->c:Lcom/google/gson/d;

    iget-object v3, v10, Lcom/google/gson/f;->d:Ljava/util/Map;

    iget-boolean v4, v10, Lcom/google/gson/f;->g:Z

    iget-boolean v5, v10, Lcom/google/gson/f;->k:Z

    iget-boolean v6, v10, Lcom/google/gson/f;->o:Z

    iget-boolean v7, v10, Lcom/google/gson/f;->m:Z

    iget-boolean v8, v10, Lcom/google/gson/f;->n:Z

    iget-boolean v9, v10, Lcom/google/gson/f;->l:Z

    iget-object v10, v10, Lcom/google/gson/f;->b:Lcom/google/gson/u;

    invoke-direct/range {v0 .. v11}, Lcom/google/gson/e;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/d;Ljava/util/Map;ZZZZZZLcom/google/gson/u;Ljava/util/List;)V

    .line 1023
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1022
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/e;

    .line 8
    return-object v0

    .line 1556
    :cond_1
    if-eq v2, v5, :cond_0

    if-eq v3, v5, :cond_0

    .line 1557
    new-instance v0, Lcom/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, v2, v3}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(II)V

    goto :goto_0
.end method
