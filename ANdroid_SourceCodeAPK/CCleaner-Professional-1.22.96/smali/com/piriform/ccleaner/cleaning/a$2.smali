.class final Lcom/piriform/ccleaner/cleaning/a$2;
.super Lcom/piriform/ccleaner/cleaning/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/cleaning/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/cleaning/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/a;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/a$2;->a:Lcom/piriform/ccleaner/cleaning/a;

    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b_(I)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    sget v0, Lcom/piriform/ccleaner/cleaning/f;->b:I

    if-ne p1, v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/a$2;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 2021
    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/a;->e:Lcom/piriform/ccleaner/ui/d/a;

    .line 137
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/d/a;->a()V

    .line 138
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/a$2;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 3021
    iget-boolean v0, v0, Lcom/piriform/ccleaner/cleaning/a;->o:Z

    .line 138
    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/a$2;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 4021
    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/a;->l:Lcom/piriform/ccleaner/cleaning/a$a;

    .line 139
    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/a$a;->c()V

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/a$2;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 11021
    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/a;->l:Lcom/piriform/ccleaner/cleaning/a$a;

    .line 143
    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/a$a;->b()V

    .line 145
    :cond_1
    return-void

    .line 141
    :cond_2
    iget-object v6, p0, Lcom/piriform/ccleaner/cleaning/a$2;->a:Lcom/piriform/ccleaner/cleaning/a;

    .line 5162
    const-wide/16 v0, 0x0

    .line 5163
    iget-object v2, v6, Lcom/piriform/ccleaner/cleaning/a;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 5164
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->i()Lcom/piriform/ccleaner/a/a/d$b;

    move-result-object v1

    sget-object v8, Lcom/piriform/ccleaner/a/a/d$b;->a:Lcom/piriform/ccleaner/a/a/d$b;

    if-ne v1, v8, :cond_7

    .line 5165
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->p()Lcom/piriform/ccleaner/core/i;

    move-result-object v0

    .line 6076
    iget-wide v0, v0, Lcom/piriform/ccleaner/core/i;->b:J

    .line 5165
    add-long/2addr v0, v2

    :goto_2
    move-wide v2, v0

    .line 5167
    goto :goto_1

    .line 5150
    :cond_3
    iget-object v0, v6, Lcom/piriform/ccleaner/cleaning/a;->c:Lcom/piriform/ccleaner/cleaning/b;

    .line 7031
    sget-object v1, Lcom/piriform/ccleaner/core/h;->c:Lcom/piriform/ccleaner/core/h;

    sget-object v7, Lcom/piriform/ccleaner/core/h;->a:Lcom/piriform/ccleaner/core/h;

    invoke-virtual {v1, v2, v3, v7}, Lcom/piriform/ccleaner/core/h;->b(JLcom/piriform/ccleaner/core/h;)J

    move-result-wide v8

    .line 7032
    iget-object v1, v0, Lcom/piriform/ccleaner/cleaning/b;->a:Lcom/piriform/ccleaner/b/a;

    iget-object v7, v0, Lcom/piriform/ccleaner/cleaning/b;->b:Lcom/piriform/ccleaner/cleaning/g;

    invoke-static {v7}, Lcom/piriform/ccleaner/b/b;->b(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/b/b;

    move-result-object v7

    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/b;->c:Ljava/lang/String;

    invoke-interface {v1, v7, v0, v8, v9}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 7158
    iget-object v0, v6, Lcom/piriform/ccleaner/cleaning/a;->k:Lcom/piriform/ccleaner/l/c;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/piriform/ccleaner/cleaning/a;->k:Lcom/piriform/ccleaner/l/c;

    invoke-interface {v0}, Lcom/piriform/ccleaner/l/c;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    move v0, v5

    .line 5152
    :goto_3
    if-eqz v0, :cond_0

    .line 5153
    iget-object v0, v6, Lcom/piriform/ccleaner/cleaning/a;->g:Lcom/piriform/ccleaner/ui/d/b;

    .line 8027
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/d/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e0027

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 8029
    iget-object v6, v0, Lcom/piriform/ccleaner/ui/d/b;->a:Landroid/content/Context;

    const v7, 0x7f080087

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8031
    new-instance v3, Landroid/support/v4/app/z$d;

    iget-object v6, v0, Lcom/piriform/ccleaner/ui/d/b;->a:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/support/v4/app/z$d;-><init>(Landroid/content/Context;)V

    .line 8664
    iput v1, v3, Landroid/support/v4/app/z$d;->z:I

    .line 8032
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/d/b;->a:Landroid/content/Context;

    const v6, 0x7f080209

    .line 8033
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/z$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$d;

    move-result-object v1

    .line 8034
    invoke-virtual {v1, v2}, Landroid/support/v4/app/z$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$d;

    move-result-object v1

    new-instance v3, Landroid/support/v4/app/z$c;

    invoke-direct {v3}, Landroid/support/v4/app/z$c;-><init>()V

    .line 8035
    invoke-virtual {v3, v2}, Landroid/support/v4/app/z$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/z$d;->a(Landroid/support/v4/app/z$q;)Landroid/support/v4/app/z$d;

    move-result-object v1

    const v2, 0x7f020111

    .line 8036
    invoke-virtual {v1, v2}, Landroid/support/v4/app/z$d;->a(I)Landroid/support/v4/app/z$d;

    move-result-object v1

    .line 8037
    invoke-virtual {v1, v5}, Landroid/support/v4/app/z$d;->a(Z)Landroid/support/v4/app/z$d;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/ui/d/b;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 8038
    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 9237
    iput-object v2, v1, Landroid/support/v4/app/z$d;->d:Landroid/app/PendingIntent;

    .line 8041
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/d/b;->b:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v2}, Lcom/piriform/ccleaner/s/h;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 8042
    iget-object v2, v0, Lcom/piriform/ccleaner/ui/d/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020104

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 9301
    iput-object v2, v1, Landroid/support/v4/app/z$d;->g:Landroid/graphics/Bitmap;

    .line 10055
    :cond_5
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/d/b;->a:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 8047
    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/support/v4/app/z$d;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_6
    move v0, v4

    .line 7158
    goto/16 :goto_3

    :cond_7
    move-wide v0, v2

    goto/16 :goto_2
.end method
