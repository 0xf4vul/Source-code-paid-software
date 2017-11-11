.class Landroid/support/v4/app/z$o;
.super Landroid/support/v4/app/z$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Landroid/support/v4/app/z$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/z$d;)Landroid/app/Notification;
    .locals 25

    .prologue
    .line 644
    new-instance v1, Landroid/support/v4/app/af$a;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/z$d;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/z$d;->F:Landroid/app/Notification;

    .line 2843
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/z$d;->b:Ljava/lang/CharSequence;

    .line 3833
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/z$d;->c:Ljava/lang/CharSequence;

    .line 645
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/z$d;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/z$d;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/z$d;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/z$d;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/z$d;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/z$d;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/z$d;->p:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/z$d;->q:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/z$d;->r:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/z$d;->l:Z

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/z$d;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/z$d;->n:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/z$d;->w:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/z$d;->y:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/z$d;->s:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/z$d;->t:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/z$d;->u:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/z$d;->C:Landroid/widget/RemoteViews;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/z$d;->D:Landroid/widget/RemoteViews;

    move-object/from16 v24, v0

    invoke-direct/range {v1 .. v24}, Landroid/support/v4/app/af$a;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 650
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/z$d;->v:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/x;Ljava/util/ArrayList;)V

    .line 651
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/z$d;->m:Landroid/support/v4/app/z$q;

    invoke-static {v1, v2}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/y;Landroid/support/v4/app/z$q;)V

    .line 652
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/app/z$e;->a(Landroid/support/v4/app/z$d;Landroid/support/v4/app/y;)Landroid/app/Notification;

    move-result-object v1

    .line 653
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/z$d;->m:Landroid/support/v4/app/z$q;

    if-eqz v2, :cond_0

    .line 654
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/z$o;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    .line 655
    if-eqz v2, :cond_0

    .line 656
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/z$d;->m:Landroid/support/v4/app/z$q;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/z$q;->a(Landroid/os/Bundle;)V

    .line 659
    :cond_0
    return-object v1
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 664
    invoke-static {p1}, Landroid/support/v4/app/af;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
