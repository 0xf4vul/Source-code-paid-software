.class public final Lcom/piriform/ccleaner/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a/e;


# instance fields
.field private final a:Lcom/piriform/ccleaner/a/q;

.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Landroid/content/ContentResolver;

.field private final d:Lcom/piriform/ccleaner/s/h;

.field private final e:Lcom/piriform/ccleaner/a/b;

.field private final f:Lcom/piriform/ccleaner/n/a;

.field private final g:Lcom/piriform/ccleaner/m/m;

.field private final h:Lcom/piriform/ccleaner/b/e;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/b;Lcom/piriform/ccleaner/m/m;Landroid/content/pm/PackageManager;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/b/e;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/piriform/ccleaner/a/j;->a:Lcom/piriform/ccleaner/a/q;

    .line 36
    iput-object p4, p0, Lcom/piriform/ccleaner/a/j;->b:Landroid/content/pm/PackageManager;

    .line 37
    iput-object p5, p0, Lcom/piriform/ccleaner/a/j;->c:Landroid/content/ContentResolver;

    .line 38
    iput-object p6, p0, Lcom/piriform/ccleaner/a/j;->d:Lcom/piriform/ccleaner/s/h;

    .line 39
    iput-object p2, p0, Lcom/piriform/ccleaner/a/j;->e:Lcom/piriform/ccleaner/a/b;

    .line 40
    iput-object p7, p0, Lcom/piriform/ccleaner/a/j;->f:Lcom/piriform/ccleaner/n/a;

    .line 41
    iput-object p3, p0, Lcom/piriform/ccleaner/a/j;->g:Lcom/piriform/ccleaner/m/m;

    .line 42
    iput-object p8, p0, Lcom/piriform/ccleaner/a/j;->h:Lcom/piriform/ccleaner/b/e;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/a/d;
    .locals 9

    .prologue
    .line 48
    sget-object v0, Lcom/piriform/ccleaner/a/j$1;->a:[I

    invoke-virtual {p1}, Lcom/piriform/ccleaner/cleaning/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled CleanType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    new-instance v0, Lcom/piriform/ccleaner/a/m;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/j;->a:Lcom/piriform/ccleaner/a/q;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/j;->e:Lcom/piriform/ccleaner/a/b;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/j;->b:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/piriform/ccleaner/a/j;->g:Lcom/piriform/ccleaner/m/m;

    iget-object v5, p0, Lcom/piriform/ccleaner/a/j;->c:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/piriform/ccleaner/a/j;->d:Lcom/piriform/ccleaner/s/h;

    iget-object v7, p0, Lcom/piriform/ccleaner/a/j;->f:Lcom/piriform/ccleaner/n/a;

    iget-object v8, p0, Lcom/piriform/ccleaner/a/j;->h:Lcom/piriform/ccleaner/b/e;

    invoke-direct/range {v0 .. v8}, Lcom/piriform/ccleaner/a/m;-><init>(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/b;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/b/e;)V

    .line 63
    :goto_0
    return-object v0

    .line 61
    :pswitch_1
    new-instance v0, Lcom/piriform/ccleaner/a/n;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/j;->e:Lcom/piriform/ccleaner/a/b;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/j;->f:Lcom/piriform/ccleaner/n/a;

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/a/n;-><init>(Lcom/piriform/ccleaner/a/b;Lcom/piriform/ccleaner/n/a;)V

    goto :goto_0

    .line 63
    :pswitch_2
    new-instance v0, Lcom/piriform/ccleaner/a/o;

    iget-object v1, p0, Lcom/piriform/ccleaner/a/j;->e:Lcom/piriform/ccleaner/a/b;

    iget-object v2, p0, Lcom/piriform/ccleaner/a/j;->d:Lcom/piriform/ccleaner/s/h;

    iget-object v3, p0, Lcom/piriform/ccleaner/a/j;->f:Lcom/piriform/ccleaner/n/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/a/o;-><init>(Lcom/piriform/ccleaner/a/b;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/n/a;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
