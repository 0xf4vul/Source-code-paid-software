.class public Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/fragment/ad;
.implements Lcom/piriform/ccleaner/ui/fragment/ag;
.implements Lcom/piriform/ccleaner/ui/fragment/u$a;
.implements Lcom/piriform/ccleaner/ui/fragment/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;
    }
.end annotation


# instance fields
.field m:Ljava/util/concurrent/Executor;

.field private n:Lcom/piriform/ccleaner/settings/b;

.field private o:Lcom/piriform/ccleaner/settings/c;

.field private p:Ljava/lang/String;

.field private q:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    return-void
.end method

.method private a(Landroid/support/v4/app/h;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->c()Landroid/support/v4/app/m;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p2}, Landroid/support/v4/app/q;->a(Ljava/lang/String;)Landroid/support/v4/app/q;

    .line 97
    const v1, 0x7f10008e

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/q;->b(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    .line 98
    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    .line 99
    return-void
.end method

.method private a(Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 205
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->q:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    .line 206
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->c()Landroid/support/v4/app/m;

    move-result-object v0

    .line 208
    invoke-static {p1}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->a(Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;)I

    move-result v1

    invoke-static {p1}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->b(Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;)I

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/piriform/ccleaner/ui/fragment/u;->a(IILjava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/u;

    move-result-object v1

    .line 209
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/piriform/ccleaner/ui/fragment/u;->a(Landroid/support/v4/app/m;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private d(Lcom/piriform/ccleaner/settings/c;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->n:Lcom/piriform/ccleaner/settings/b;

    .line 6085
    iget-object v1, v0, Lcom/piriform/ccleaner/settings/b;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/piriform/ccleaner/settings/b$1;

    invoke-direct {v2, v0, p1}, Lcom/piriform/ccleaner/settings/b$1;-><init>(Lcom/piriform/ccleaner/settings/b;Lcom/piriform/ccleaner/settings/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->c()Landroid/support/v4/app/m;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "firstTransaction"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/m;->c(Ljava/lang/String;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/settings/c;)V
    .locals 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->o:Lcom/piriform/ccleaner/settings/c;

    .line 147
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->b:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    .line 2099
    iget-object v1, p1, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->a(Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->p:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->a:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    invoke-direct {p0, v0, p1}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->a(Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/settings/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->n:Lcom/piriform/ccleaner/settings/b;

    .line 4079
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c;

    .line 4080
    iget-object v3, v1, Lcom/piriform/ccleaner/settings/b;->a:Landroid/content/ContentResolver;

    sget-object v4, Lcom/piriform/ccleaner/data/CCleanerContentProvider$b;->a:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4095
    iget-wide v6, v0, Lcom/piriform/ccleaner/settings/c;->a:J

    .line 4080
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public final b(Lcom/piriform/ccleaner/settings/c;)V
    .locals 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->o:Lcom/piriform/ccleaner/settings/c;

    .line 158
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->c:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    .line 3099
    iget-object v1, p1, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 158
    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->a(Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    invoke-static {p1}, Lcom/piriform/ccleaner/ui/fragment/ac;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/ac;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "secondTransaction"

    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->a(Landroid/support/v4/app/h;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public final c(Lcom/piriform/ccleaner/settings/c;)V
    .locals 2

    .prologue
    .line 173
    invoke-static {p1}, Lcom/piriform/ccleaner/ui/fragment/ac;->a(Lcom/piriform/ccleaner/settings/c;)Lcom/piriform/ccleaner/ui/fragment/ac;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "firstTransaction"

    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->a(Landroid/support/v4/app/h;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 1089
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1090
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/ao;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/ao;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "firstTransaction"

    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->a(Landroid/support/v4/app/h;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->i()V

    .line 164
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 189
    sget-object v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$1;->a:[I

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->q:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled case: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->q:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->p:Ljava/lang/String;

    .line 4132
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->i()V

    .line 4134
    invoke-static {v0}, Lcom/piriform/ccleaner/settings/c;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/settings/c;

    move-result-object v0

    .line 4135
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->d(Lcom/piriform/ccleaner/settings/c;)V

    .line 198
    :goto_0
    return-void

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->o:Lcom/piriform/ccleaner/settings/c;

    .line 4151
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->i()V

    .line 4152
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->d(Lcom/piriform/ccleaner/settings/c;)V

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->o:Lcom/piriform/ccleaner/settings/c;

    .line 4167
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->i()V

    .line 4217
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->n:Lcom/piriform/ccleaner/settings/b;

    .line 5094
    iget-object v2, v1, Lcom/piriform/ccleaner/settings/b;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/piriform/ccleaner/settings/b$2;

    invoke-direct {v3, v1, v0}, Lcom/piriform/ccleaner/settings/b$2;-><init>(Lcom/piriform/ccleaner/settings/b;Lcom/piriform/ccleaner/settings/c;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->setContentView(I)V

    .line 51
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;)V

    .line 53
    new-instance v0, Lcom/piriform/ccleaner/settings/b;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->m:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/settings/b;-><init>(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->n:Lcom/piriform/ccleaner/settings/b;

    .line 55
    if-nez p1, :cond_0

    .line 1073
    invoke-static {}, Lcom/piriform/ccleaner/ui/fragment/y;->I()Lcom/piriform/ccleaner/ui/fragment/y;

    move-result-object v0

    .line 1075
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->c()Landroid/support/v4/app/m;

    move-result-object v1

    .line 1076
    invoke-virtual {v1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v1

    .line 1077
    const v2, 0x7f10008e

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/q;->a(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    .line 1078
    invoke-virtual {v1}, Landroid/support/v4/app/q;->a()I

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string/jumbo v0, "customFolder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->o:Lcom/piriform/ccleaner/settings/c;

    .line 59
    const-string/jumbo v0, "selectedPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->p:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "postDialogAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->q:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 1121
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->c()Landroid/support/v4/app/m;

    move-result-object v0

    .line 1122
    const v1, 0x7f10008e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/m;->a(I)Landroid/support/v4/app/h;

    move-result-object v0

    .line 110
    instance-of v0, v0, Lcom/piriform/ccleaner/ui/fragment/ac;

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->i()V

    .line 115
    :goto_0
    const/4 v0, 0x1

    .line 117
    :goto_1
    return v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->onBackPressed()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    const-string/jumbo v0, "customFolder"

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->o:Lcom/piriform/ccleaner/settings/c;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    const-string/jumbo v0, "selectedPath"

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "postDialogAction"

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity;->q:Lcom/piriform/ccleaner/ui/activity/CustomFoldersSettingsActivity$a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 70
    return-void
.end method
