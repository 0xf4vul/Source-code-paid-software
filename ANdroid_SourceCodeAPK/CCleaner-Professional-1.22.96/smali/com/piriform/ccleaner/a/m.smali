.class final Lcom/piriform/ccleaner/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a/d;


# instance fields
.field private final a:Lcom/piriform/ccleaner/a/q;

.field private final b:Lcom/piriform/ccleaner/a/b;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Landroid/content/ContentResolver;

.field private final e:Lcom/piriform/ccleaner/s/h;

.field private final f:Lcom/piriform/ccleaner/n/a;

.field private final g:Lcom/piriform/ccleaner/m/m;

.field private final h:Lcom/piriform/ccleaner/b/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/b;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/b/e;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/piriform/ccleaner/a/m;->a:Lcom/piriform/ccleaner/a/q;

    .line 47
    iput-object p2, p0, Lcom/piriform/ccleaner/a/m;->b:Lcom/piriform/ccleaner/a/b;

    .line 48
    iput-object p3, p0, Lcom/piriform/ccleaner/a/m;->c:Landroid/content/pm/PackageManager;

    .line 49
    iput-object p5, p0, Lcom/piriform/ccleaner/a/m;->d:Landroid/content/ContentResolver;

    .line 50
    iput-object p6, p0, Lcom/piriform/ccleaner/a/m;->e:Lcom/piriform/ccleaner/s/h;

    .line 51
    iput-object p7, p0, Lcom/piriform/ccleaner/a/m;->f:Lcom/piriform/ccleaner/n/a;

    .line 52
    iput-object p4, p0, Lcom/piriform/ccleaner/a/m;->g:Lcom/piriform/ccleaner/m/m;

    .line 53
    iput-object p8, p0, Lcom/piriform/ccleaner/a/m;->h:Lcom/piriform/ccleaner/b/e;

    .line 54
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/piriform/ccleaner/a/m;->e:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/piriform/ccleaner/a/m;->a:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/m;->d:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/piriform/ccleaner/a/m;->h:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/a/t;->a(Lcom/piriform/ccleaner/a/q;Landroid/content/ContentResolver;ZLcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/t;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    invoke-static {}, Lcom/piriform/ccleaner/m/d;->a()Ljava/util/Collection;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/m/d;

    .line 126
    :try_start_0
    iget-object v3, p0, Lcom/piriform/ccleaner/a/m;->g:Lcom/piriform/ccleaner/m/m;

    .line 2048
    iget-object v0, v0, Lcom/piriform/ccleaner/m/d;->n:Ljava/lang/String;

    .line 2065
    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/m/m;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2066
    if-eqz v0, :cond_2

    .line 2067
    invoke-virtual {v3, v0}, Lcom/piriform/ccleaner/m/m;->a(Landroid/content/pm/PackageInfo;)Lcom/piriform/ccleaner/core/data/AndroidPackage;

    move-result-object v0

    .line 2068
    new-instance v4, Lcom/piriform/ccleaner/m/c;

    invoke-direct {v4}, Lcom/piriform/ccleaner/m/c;-><init>()V

    .line 2069
    invoke-virtual {v3, v0, v4}, Lcom/piriform/ccleaner/m/m;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/m/l;)V

    .line 2070
    const-wide/16 v6, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v3}, Lcom/piriform/ccleaner/m/c;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 2071
    if-eqz v3, :cond_2

    .line 127
    :goto_1
    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2076
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 134
    :cond_3
    new-instance v0, Lcom/piriform/ccleaner/core/data/AndroidPackage$b;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/AndroidPackage$b;-><init>()V

    .line 136
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 139
    iget-object v2, p0, Lcom/piriform/ccleaner/a/m;->a:Lcom/piriform/ccleaner/a/q;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/m;->c:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/piriform/ccleaner/a/m;->h:Lcom/piriform/ccleaner/b/e;

    .line 3119
    iget-object v5, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3027
    new-instance v5, Lcom/piriform/ccleaner/a/a/u;

    invoke-direct {v5, v2, v0, v3, v4}, Lcom/piriform/ccleaner/a/a/u;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/data/AndroidPackage;Landroid/graphics/drawable/Drawable;Lcom/piriform/ccleaner/b/e;)V

    .line 139
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 141
    :cond_4
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/piriform/ccleaner/a/m;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 61
    sget-object v3, Lcom/piriform/ccleaner/cleaning/g;->a:Lcom/piriform/ccleaner/cleaning/g;

    invoke-interface {v0, v3}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/cleaning/g;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/piriform/ccleaner/a/m;->f:Lcom/piriform/ccleaner/n/a;

    sget-object v4, Lcom/piriform/ccleaner/cleaning/g;->a:Lcom/piriform/ccleaner/cleaning/g;

    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/piriform/ccleaner/n/a;->a(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/a/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_2
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/a/m;->a(Ljava/util/List;)V

    .line 68
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/piriform/ccleaner/a/m;->b:Lcom/piriform/ccleaner/a/b;

    .line 1078
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    iget-object v2, p0, Lcom/piriform/ccleaner/a/m;->e:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v2}, Lcom/piriform/ccleaner/s/h;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1081
    sget-object v2, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    :goto_0
    sget-object v2, Lcom/piriform/ccleaner/a/h;->c:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    sget-object v2, Lcom/piriform/ccleaner/a/h;->g:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    sget-object v2, Lcom/piriform/ccleaner/a/h;->h:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    sget-object v2, Lcom/piriform/ccleaner/a/h;->k:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    sget-object v2, Lcom/piriform/ccleaner/a/h;->i:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    sget-object v2, Lcom/piriform/ccleaner/a/h;->s:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    sget-object v2, Lcom/piriform/ccleaner/a/h;->u:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    sget-object v2, Lcom/piriform/ccleaner/a/h;->r:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    sget-object v2, Lcom/piriform/ccleaner/a/h;->v:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    sget-object v2, Lcom/piriform/ccleaner/a/h;->f:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    sget-object v2, Lcom/piriform/ccleaner/a/h;->l:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    sget-object v2, Lcom/piriform/ccleaner/a/h;->n:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    sget-object v2, Lcom/piriform/ccleaner/a/h;->m:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    sget-object v2, Lcom/piriform/ccleaner/a/h;->o:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    sget-object v2, Lcom/piriform/ccleaner/a/h;->p:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    iget-object v2, p0, Lcom/piriform/ccleaner/a/m;->e:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v2}, Lcom/piriform/ccleaner/s/h;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1103
    sget-object v2, Lcom/piriform/ccleaner/a/h;->j:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_0
    iget-object v2, p0, Lcom/piriform/ccleaner/a/m;->e:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v2}, Lcom/piriform/ccleaner/s/h;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1106
    sget-object v2, Lcom/piriform/ccleaner/a/h;->t:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_1
    iget-object v2, p0, Lcom/piriform/ccleaner/a/m;->e:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v2}, Lcom/piriform/ccleaner/s/h;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1109
    sget-object v2, Lcom/piriform/ccleaner/a/h;->a:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v2, p0, Lcom/piriform/ccleaner/a/m;->e:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v2}, Lcom/piriform/ccleaner/s/h;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1111
    sget-object v2, Lcom/piriform/ccleaner/a/h;->b:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/a/b;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1083
    :cond_3
    sget-object v2, Lcom/piriform/ccleaner/a/h;->e:Lcom/piriform/ccleaner/a/h;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
