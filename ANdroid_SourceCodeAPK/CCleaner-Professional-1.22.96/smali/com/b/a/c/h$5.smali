.class final Lcom/b/a/c/h$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/h;


# direct methods
.method constructor <init>(Lcom/b/a/c/h;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/b/a/c/h$5;->a:Lcom/b/a/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 730
    iget-object v2, p0, Lcom/b/a/c/h$5;->a:Lcom/b/a/c/h;

    iget-object v1, p0, Lcom/b/a/c/h$5;->a:Lcom/b/a/c/h;

    new-instance v3, Lcom/b/a/c/h$c;

    invoke-direct {v3}, Lcom/b/a/c/h$c;-><init>()V

    invoke-static {v1, v3}, Lcom/b/a/c/h;->a(Lcom/b/a/c/h;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1741
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1746
    array-length v5, v3

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v3, v1

    .line 1747
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v7

    const-string/jumbo v8, "CrashlyticsCore"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Found invalid session part file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    invoke-static {v6}, Lcom/b/a/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1746
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1752
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1756
    invoke-virtual {v2}, Lcom/b/a/c/h;->d()Ljava/io/File;

    move-result-object v1

    .line 1758
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1759
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1762
    :cond_1
    new-instance v3, Lcom/b/a/c/h$6;

    invoke-direct {v3, v2, v4}, Lcom/b/a/c/h$6;-><init>(Lcom/b/a/c/h;Ljava/util/Set;)V

    .line 1772
    invoke-virtual {v2, v3}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 1773
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v6

    const-string/jumbo v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Moving session file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1775
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v6

    const-string/jumbo v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Could not move session file. Deleting "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1772
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1781
    :cond_3
    invoke-virtual {v2}, Lcom/b/a/c/h;->a()V

    .line 731
    :cond_4
    return-void
.end method
