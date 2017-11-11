.class public final Lcom/piriform/ccleaner/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/piriform/ccleaner/a/q;

.field private final c:Landroid/content/ContentResolver;

.field private final d:Lcom/piriform/ccleaner/s/h;

.field private final e:Lcom/piriform/ccleaner/m/k;

.field private final f:Landroid/content/pm/PackageManager;

.field private final g:Lcom/piriform/ccleaner/m/m;

.field private final h:Landroid/content/ClipboardManager;

.field private final i:Lcom/piriform/ccleaner/f/m;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Lcom/piriform/ccleaner/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/a/q;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/m/k;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Landroid/content/ClipboardManager;Lcom/piriform/ccleaner/f/m;Ljava/util/concurrent/Executor;Lcom/piriform/ccleaner/b/e;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/piriform/ccleaner/a/i;->a:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    .line 80
    iput-object p3, p0, Lcom/piriform/ccleaner/a/i;->c:Landroid/content/ContentResolver;

    .line 81
    iput-object p4, p0, Lcom/piriform/ccleaner/a/i;->d:Lcom/piriform/ccleaner/s/h;

    .line 82
    iput-object p5, p0, Lcom/piriform/ccleaner/a/i;->e:Lcom/piriform/ccleaner/m/k;

    .line 83
    iput-object p6, p0, Lcom/piriform/ccleaner/a/i;->f:Landroid/content/pm/PackageManager;

    .line 84
    iput-object p7, p0, Lcom/piriform/ccleaner/a/i;->g:Lcom/piriform/ccleaner/m/m;

    .line 85
    iput-object p8, p0, Lcom/piriform/ccleaner/a/i;->h:Landroid/content/ClipboardManager;

    .line 86
    iput-object p9, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    .line 87
    iput-object p10, p0, Lcom/piriform/ccleaner/a/i;->j:Ljava/util/concurrent/Executor;

    .line 88
    iput-object p11, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    .line 89
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/a/a/d;
    .locals 8

    .prologue
    .line 102
    sget-object v0, Lcom/piriform/ccleaner/a/i$1;->a:[I

    invoke-virtual {p1}, Lcom/piriform/ccleaner/a/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected Analysis Type encountered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/b;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/b;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/f;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/g;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->c:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    .line 1026
    new-instance v0, Lcom/piriform/ccleaner/a/a/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/a/h;-><init>(Lcom/piriform/ccleaner/a/q;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/b/e;)V

    goto :goto_0

    .line 112
    :pswitch_4
    new-instance v1, Lcom/piriform/ccleaner/core/b/a;

    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->f:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->d:Lcom/piriform/ccleaner/s/h;

    invoke-direct {v1, v0, v2, v3}, Lcom/piriform/ccleaner/core/b/a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/s/h;)V

    .line 113
    new-instance v0, Lcom/piriform/ccleaner/a/a/i;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->e:Lcom/piriform/ccleaner/m/k;

    iget-object v4, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/piriform/ccleaner/a/a/i;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/m/k;Lcom/piriform/ccleaner/core/b/a;Lcom/piriform/ccleaner/b/e;)V

    goto :goto_0

    .line 115
    :pswitch_5
    new-instance v1, Lcom/piriform/ccleaner/core/b/a;

    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->f:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->d:Lcom/piriform/ccleaner/s/h;

    invoke-direct {v1, v0, v2, v3}, Lcom/piriform/ccleaner/core/b/a;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/s/h;)V

    .line 116
    new-instance v0, Lcom/piriform/ccleaner/a/a/c;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->e:Lcom/piriform/ccleaner/m/k;

    iget-object v4, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/piriform/ccleaner/a/a/c;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/m/k;Lcom/piriform/ccleaner/core/b/a;Lcom/piriform/ccleaner/b/e;)V

    goto :goto_0

    .line 118
    :pswitch_6
    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    new-instance v2, Lcom/piriform/ccleaner/core/b/c;

    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->c:Landroid/content/ContentResolver;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/core/b/c;-><init>(Landroid/content/ContentResolver;)V

    iget-object v7, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    .line 1033
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1034
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    new-instance v0, Lcom/piriform/ccleaner/a/a/j;

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/a/a/j;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/b/c;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/piriform/ccleaner/b/e;)V

    goto :goto_0

    .line 120
    :pswitch_7
    new-instance v0, Lcom/piriform/ccleaner/a/a/k;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->h:Landroid/content/ClipboardManager;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/a/k;-><init>(Lcom/piriform/ccleaner/a/q;Landroid/content/ClipboardManager;Lcom/piriform/ccleaner/b/e;)V

    goto/16 :goto_0

    .line 122
    :pswitch_8
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->c:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->j:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/piriform/ccleaner/a/a/l;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/l;

    move-result-object v0

    goto/16 :goto_0

    .line 124
    :pswitch_9
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/m;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/m;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :pswitch_a
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/o;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto/16 :goto_0

    .line 128
    :pswitch_b
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/r;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto/16 :goto_0

    .line 130
    :pswitch_c
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->a:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 131
    new-instance v2, Lcom/piriform/ccleaner/a/p;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->f:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->c:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/piriform/ccleaner/a/p;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ContentResolver;Landroid/app/SearchManager;Lcom/piriform/ccleaner/b/e;)V

    .line 132
    new-instance v0, Lcom/piriform/ccleaner/a/a/s;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->f:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/piriform/ccleaner/a/i;->g:Lcom/piriform/ccleaner/m/m;

    iget-object v5, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/a/a/s;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/p;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/b/e;)V

    goto/16 :goto_0

    .line 135
    :pswitch_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Manual Cleaning Analysis Type found, not expected here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_e
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->c:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/a/t;->a(Lcom/piriform/ccleaner/a/q;Landroid/content/ContentResolver;ZLcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/t;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :pswitch_f
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->a:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 140
    new-instance v1, Lcom/piriform/ccleaner/n/b;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/n/b;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v2, Lcom/piriform/ccleaner/core/b/l;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->f:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v0, v3, v1}, Lcom/piriform/ccleaner/core/b/l;-><init>(Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/n/b;)V

    .line 142
    new-instance v0, Lcom/piriform/ccleaner/a/a/v;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->d:Lcom/piriform/ccleaner/s/h;

    iget-object v4, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/piriform/ccleaner/a/a/v;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/core/b/l;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/b/e;)V

    goto/16 :goto_0

    .line 144
    :pswitch_10
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/w;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto/16 :goto_0

    .line 146
    :pswitch_11
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/x;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto/16 :goto_0

    .line 148
    :pswitch_12
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/y;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :pswitch_13
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/z;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :pswitch_14
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/aa;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto/16 :goto_0

    .line 154
    :pswitch_15
    iget-object v0, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->i:Lcom/piriform/ccleaner/f/m;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-static {v0, v1, v2}, Lcom/piriform/ccleaner/a/a/ab;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :pswitch_16
    new-instance v0, Lcom/piriform/ccleaner/a/a/n;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/i;->b:Lcom/piriform/ccleaner/a/q;

    sget-object v2, Lcom/piriform/ccleaner/a/h;->w:Lcom/piriform/ccleaner/a/h;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/i;->k:Lcom/piriform/ccleaner/b/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/a/n;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/h;Lcom/piriform/ccleaner/b/e;)V

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/piriform/ccleaner/a/h;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/h;

    .line 95
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/a/i;->a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/a/a/d;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    return-object v1
.end method
